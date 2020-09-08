$ErrorActionPreference = 'Stop';

$packageName= $env:ChocolateyPackageName
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir '\\10.0.0.6\files\8085-simulator\Vikas Enterprises 8085 Simulator.msi'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'msi'
  file          = $fileLocation
  checksum      = '19BF1DB9CE1D6D75615BF07ACC154165CC512B9CB2D5E4ACCE3DB26EB8878DCF'
  checksumType  = 'sha256'
  silentArgs    = '/qn /norestart'
  validExitCodes= @(0)
  softwareName  = '8085 Simulator*'
}

Install-ChocolateyInstallPackage @packageArgs