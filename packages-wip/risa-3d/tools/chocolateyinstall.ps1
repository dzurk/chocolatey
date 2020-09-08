$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = '\\10.0.0.6\files\risa\3d\install_3d_1804.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  file         = $fileLocation
  softwareName  = 'risa-3d*'
  checksum      = 'DEB92E33C8D6251071F1018831683A9450D4758E3030A52E903FB994B61BA1CC'
  checksumType  = 'sha256' 
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs