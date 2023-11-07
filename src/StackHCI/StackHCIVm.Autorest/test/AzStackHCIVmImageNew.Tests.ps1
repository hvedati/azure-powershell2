if(($null -eq $TestName) -or ($TestName -contains 'AzStackHCIVmImageNew'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'AzStackHCIVmImageNew.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'AzStackHCIVmImageNew' {
    It 'Create Image '  {
        New-AzStackHCIVmImage -Name  $env.imageName -ImagePath  $env.imagePath  -SubscriptionId $env.SubscriptionId -ResourceGroupName $env.resourceGroupName -CustomLocationId $env.customLocationId -Location $env.location -OSType $env.osTypeLinux | Select-Object -Property ProvisioningState | Should -BeExactly "@{ProvisioningState=Succeeded}"
    }


    It 'List'  {
        {
            $config = Get-AzStackHCIVMImage -ResourceGroupName $env.resourceGroupName
            $config.Count | Should -BeGreaterThan 0
        } | Should -Not -Throw
    }

    It 'Get'  {
        {
            $config = Get-AzStackHCIVmImage -Name  $env.imageName -ResourceGroupName $env.resourceGroupName 
            $config.Name | Should -Be $env.imageName
        } | Should -Not -Throw
    }


    It 'Delete'{
        {
            Remove-AzStackHCIVmImage -Name  $env.imageName -ResourceGroupName $env.resourceGroupName -Force
            $config =  Get-AzStackHCIVmImage -Name  $env.imageName -ResourceGroupName $env.resourceGroupName 
            $config | Should -Be $null

        } | Should -Throw
    }

}
