$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = '\\10.0.0.6\files\esri\arcgis\ArcGISPro.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'msi' 
  file         = $fileLocation
  softwareName  = 'ArcGIS Pro*'
  checksum      = 'FF70366185E2AC985A9DB54BE9C7661E9F20CB19006D5000BDCE60FC33CD7031'
  checksumType  = 'sha256'
  silentArgs    = "SOFTWARE_CLASS=Professional /qn"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyInstallPackage @packageArgs