param (
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [string] $RunPlatform,

    [Parameter(Mandatory)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Container })]
    [string] $RepoLocation,

    [Parameter(Mandatory)]
    [ValidateScript({ Test-Path -LiteralPath $_ -PathType Container })]
    [string] $DataLocation
)

$srcDir = Join-Path -Path $RepoLocation -ChildPath "src"
$liveScenarios = Get-ChildItem -Path $srcDir -Directory -Exclude "Accounts" | Get-ChildItem -Directory -Filter "LiveTests" -Recurse | Get-ChildItem -File -Filter "TestLiveScenarios.ps1" | Select-Object -ExpandProperty FullName

$rsp = [runspacefactory]::CreateRunspacePool(1, [int]$env:NUMBER_OF_PROCESSORS + 1)
[void]$rsp.Open()

$liveJobs = $liveScenarios | ForEach-Object {
    $ps = [powershell]::Create()
    $ps.RunspacePool = $rsp
    $ps.AddScript({
        param (
            [string] $RunPlatform,
            [string] $RepoLocation,
            [string] $DataLocation,
            [string] $LiveScenarioScript
        )

        Write-Host "Run platform : $RunPlatform"
        Write-Host "Repo location : $RepoLocation"
        Write-Host "Data location : $DataLocation"
        Write-Host "Live test script : $LiveScenarioScript"
        $moduleName = [regex]::match($LiveScenarioScript, "[\\|\/]src[\\|\/](?<ModuleName>[a-zA-Z]+)[\\|\/]").Groups["ModuleName"].Value
        Import-Module "./tools/TestFx/Assert.ps1" -Force
        Import-Module "./tools/TestFx/Live/LiveTestUtility.psd1" -ArgumentList $moduleName, $RunPlatform, $DataLocation -Force
        . $LiveScenarioScript
    }).AddParameter("RunPlatform", $RunPlatform).AddParameter("RepoLocation", $RepoLocation).AddParameter("DataLocation", $DataLocation).AddParameter("LiveScenarioScript", $_) | Out-Null

    [PSCustomObject]@{
        Id          = $ps.InstanceId
        Instance    = $ps
        AsyncHandle = $ps.BeginInvoke()
    } | Add-Member State -MemberType ScriptProperty -PassThru -Value {
        $this.Instance.InvocationStateInfo.State
    }
}

$totalJobs = $liveJobs
while ($totalJobs.Count -gt 0) {
    Start-Sleep -Seconds 5
    $runningJobs = @()
    $completedJobs = @()
    foreach ($job in $totalJobs) {
        if ($job.State -match "Completed|Failed|Stopped|Suspended|Disconnected") {
            $completedJobs += $job
        }
        else {
            $runningJobs += $job
        }
    }

    if ($completedJobs.Count -gt 0) {
        $completedJobs | ForEach-Object {
            if ($null -ne $_.Instance) {
                $result = $_.Instance.EndInvoke($_.AsyncHandle)
                $result
                $_.Instance.Streams | Select-Object -Property @{ Name = "FullOutput"; Expression = { $_.Information, $_.Warning, $_.Error, $_.Debug } } | Select-Object -ExpandProperty FullOutput
                $_.Instance.Dispose()
            }
        }
    }

    $totalJobs = $runningJobs
}

$liveJobs | ForEach-Object {

}

$rsp.Dispose()

$accountsDir = Join-Path -Path $srcDir -ChildPath "Accounts"
$accountsLiveScenario = Get-ChildItem -Path $accountsDir -Directory -Filter "LiveTests" -Recurse | Get-ChildItem -File -Filter "TestLiveScenarios.ps1" | Select-Object -ExpandProperty FullName
if ($null -ne $accountsLiveScenario) {
    Import-Module "./tools/TestFx/Assert.ps1" -Force
    Import-Module "./tools/TestFx/Live/LiveTestUtility.psd1" -ArgumentList "Accounts", $RunPlatform, $DataLocation -Force
    . $accountsLiveScenario
}

Write-Host "##[section]Waiting for all cleanup jobs to be completed." -ForegroundColor Green
while (Get-Job -State Running) {
    Start-Sleep -Seconds 30
}
Write-Host "##[section]All cleanup jobs are completed." -ForegroundColor Green

Write-Host "##[group]Cleanup jobs information." -ForegroundColor Magenta

Write-Host
$cleanupJobs = Get-Job
$cleanupJobs | Select-Object Name, Command, State, PSBeginTime, PSEndTime, Output
Write-Host

Write-Host "##[endgroup]" -ForegroundColor Magenta

$cleanupJobs | Remove-Job
