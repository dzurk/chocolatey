$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'ATLAS.ti Scientific Software Development ATLAS.ti 6.2.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi' 
  file          = $fileLocation
  checksum      = '0CEF10D96E10CD186440FE21CF3EF25EF3DFE9B39F4D7DDC13BFF9F405817188'
  checksumType  = 'sha256'
  softwareName  = 'ATLAS.ti*'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs