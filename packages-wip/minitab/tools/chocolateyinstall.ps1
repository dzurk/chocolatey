$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'minitab19.2.0.0setup.x64.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = '/exenoui /exelang 1033 /qn ACCEPT_EULA=1 DISABLE_UPDATES=1'
  validExitCodes= @(0)
  softwareName  = 'Minitab*'
  checksum      = '07CD272EA2536995F124FF6955BC77A0F8A0F4E5ECCEA800095404A417AC3C2D'
  checksumType  = 'sha256' 
}

Install-ChocolateyInstallPackage @packageArgs