$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'jgrasp206_04.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  file         = $fileLocation
  softwareName  = 'jGRASP*'
  checksum      = 'B37587FCE61E51BFDD38E9C0C83DF8642F544C6D003AAAA792929ADA809408FA'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs