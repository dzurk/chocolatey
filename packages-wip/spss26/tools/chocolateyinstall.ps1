$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = '\\10.0.0.6\files\spss\IBM SPSS Statistics 26.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  file         = $fileLocation
  softwareName  = 'IBM SPSS Statistics*'
  checksum      = '8B9F53E280E3F8E14346B770FBFFA9AE5433D2A11C605132221DD6E345D41B60'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs # https://chocolatey.org/docs/helpers-install-chocolatey-install-package