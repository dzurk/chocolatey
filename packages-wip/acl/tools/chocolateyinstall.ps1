$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = '\\10.0.0.6\files\acl\setup\setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  file         = $fileLocation
  softwareName  = 'Acl for Windows*'
  checksum      = '48ED92F9A5E4B83C09582709B282A7EF149218647CBB9EDE0F1A2872C8968411'
  checksumType  = 'sha256'
  silentArgs   = '/s /v"/qn RUNFROMSETUPEXE=1"'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs
msiexec.exe /p '\\10.0.0.6\files\acl\ACLforWindows_Update_v14.2.0_v14.2.1.msp' /qn /norestart