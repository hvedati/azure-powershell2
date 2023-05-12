function RandomString([bool]$allChars, [int32]$len) {
    if ($allChars) {
        return -join ((33..126) | Get-Random -Count $len | % {[char]$_})
    } else {
        return -join ((48..57) + (97..122) | Get-Random -Count $len | % {[char]$_})
    }
}
$env = @{}
if ($UsePreviousConfigForRecord) {
    $previousEnv = Get-Content (Join-Path $PSScriptRoot 'env.json') | ConvertFrom-Json
    $previousEnv.psobject.properties | Foreach-Object { $env[$_.Name] = $_.Value }
}
# Add script method called AddWithCache to $env, when useCache is set true, it will try to get the value from the $env first.
# example: $val = $env.AddWithCache('key', $val, $true)
$env | Add-Member -Type ScriptMethod -Value { param( [string]$key, [object]$val, [bool]$useCache) if ($this.Contains($key) -and $useCache) { return $this[$key] } else { $this[$key] = $val; return $val } } -Name 'AddWithCache'
function setupEnv() {
    # Preload subscriptionId and tenant from context, which will be used in test
    # as default. You could change them if needed.
    $env.SubscriptionId = (Get-AzContext).Subscription.Id
    $env.Tenant = (Get-AzContext).Tenant.Id

    $spacecraftName = "AQUA-Test"
    $env.Add("spacecraftName", $spacecraftName)

    $spacecraftContact = "azps-orbital-testspacecraftContact"
    $env.Add("spacecraftContact", $spacecraftContact)

    $contactProfile = "azps-orbital-contactprofile"
    $env.Add("contactProfile", $contactProfile)

    $eventhub = "eventhub-test-0505"
    $env.Add("eventhub", $eventhub)

    $virtualnetwork = "orbital-virtualnetwork"
    $env.Add("virtualnetwork", $virtualnetwork)

    $virtualnetworkSubnets = "orbital-vn"
    $env.Add("virtualnetworkSubnets", $virtualnetworkSubnets)

    $env.Add("location", "westus2")

    $resourceGroup = "azpstest-gp"
    $env.Add("resourceGroup", $resourceGroup)

    $contactProfileSweden = "Sweden-contactprofile"
    $env.Add("contactProfileSweden", $contactProfileSweden)

    $virtualnetworkSweden = "Sweden-virtualnetwork"
    $env.Add("virtualnetworkSweden", $virtualnetworkSweden)

    $env.Add("locationSweden", "SwedenCentral")

    $spacecraftNameSweden = "SwedenAQUASpacecraft"
    $env.Add("spacecraftNameSweden", $spacecraftNameSweden)

    $groundStationName = "Microsoft_Gavle"
    $env.Add("groundStationName", $groundStationName)

    # For any resources you created for test, you should add it to $env here.
    $envFile = 'env.json'
    if ($TestMode -eq 'live') {
        $envFile = 'localEnv.json'
    }
    set-content -Path (Join-Path $PSScriptRoot $envFile) -Value (ConvertTo-Json $env)
}
function cleanupEnv() {
    # Clean resources you create for testing
    #Remove-AzOrbitalContactProfile -Name azps-orbital-contactprofile -ResourceGroupName azpstest-gp
}

