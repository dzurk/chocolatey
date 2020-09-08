$ErrorActionPreference = 'Stop';

$packageName= 'Wolfram Mathetmatica'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'Mathematica_11.3.0_WIN_DM.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LOG="install.log"'
  validExitCodes= @(0)
  softwareName  = 'Wolfram Mathetmatica*'
}

Install-ChocolateyInstallPackage @packageArgs