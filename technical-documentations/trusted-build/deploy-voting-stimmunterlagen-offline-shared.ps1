[CmdletBinding()]
param(
)

Set-Location $PSScriptRoot
Test-Path -Path .\packages

$envFile = "./config-voting-stimmunterlagen-offline-shared.env"
$envOverwriteFile = "./config-voting-stimmunterlagen-offline-shared.overwrite.env"

Get-Content $envFile | ForEach-Object {
  $name, $value = $_.split('=')
  [Environment]::SetEnvironmentVariable($name,$value)
}

if(Test-Path $envOverwriteFile){
  Get-Content $envOverwriteFile | ForEach-Object {
    $name, $value = $_.split('=')
    Write-Host "Set environment variable overwrite for key <$name>"
    [Environment]::SetEnvironmentVariable($name,$value)
  }
}

docker compose -f .\docker-compose-deploy-library.yml up --force-recreate
