$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = '\\10.0.0.6\files\aspen\v11\AtRunUnattended.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  file         = $fileLocation
  softwareName  = 'Aspen Plus V11*'
  checksum      = '8A8A159F4B6FF564E4A01D4FAAA4D1E3735BC9DFAFFAFE3E50ECDA35FA92C64D'
  checksumType  = 'sha256'
  silentArgs   = '/S "\\10.0.0.6\files\aspen\v11\aspenONE.xml" /noreboot'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs