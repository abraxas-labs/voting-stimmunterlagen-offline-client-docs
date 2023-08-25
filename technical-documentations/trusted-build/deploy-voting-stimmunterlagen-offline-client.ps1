[CmdletBinding()]
param(
)

Set-Location $PSScriptRoot
Test-Path -Path .\deployment

docker build -f stimmunterlagen-offline-client.dockerfile -t stimmunterlagen-offline-client:1.0 -t stimmunterlagen-offline-client:latest .

$envFile = "./config-voting-stimmunterlagen-offline-client.env"
$envOverwriteFile = "./config-voting-stimmunterlagen-offline-client.overwrite.env"

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

docker compose -f .\docker-compose-deploy-client.yml up --force-recreate

