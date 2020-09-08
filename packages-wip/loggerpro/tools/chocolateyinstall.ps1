$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = '\\10.0.0.6\files\loggerpro\Vernier Logger Pro 3.4.6.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  file         = $fileLocation
  softwareName  = 'Logger Pro*'
  checksum      = '1B0A06E0F9FDFA47C891997F55EC0B539E58793CBA5E3D821EDE95AE71DF9E7E'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs