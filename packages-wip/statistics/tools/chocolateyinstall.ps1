$ErrorActionPreference = 'Stop';

$packageName= 'statistics'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'IBM_SPSS_STATISTICS_26_CLIENT_64-BIT.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'exe'
  file          = $fileLocation
  silentArgs    = '/exenoui /exelang 1033 /qn ACCEPT_EULA=1 DISABLE_UPDATES=1'
  validExitCodes= @(0)
  softwareName  = 'Statistics*'
}

Install-ChocolateyInstallPackage @packageArgs