[CmdletBinding()]
param(
)

Set-Location $PSScriptRoot

.\deploy-eai-common-ech.ps1
.\deploy-voting-library-dotnet.ps1
.\deploy-voting-stimmunterlagen-offline-shared.ps1
.\deploy-voting-stimmunterlagen-offline-client.ps1