$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir '\\10.0.0.6\files\alvin3\Alvin3FullWindowsSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'exe'
  file          = $fileLocation
  checksum      = '6CD19F3EE9225E7520CEB9F4A8E781DE5E46959D6004381D07029CEEB42E428A'
  checksumType  = 'sha256' 
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0)
  softwareName  = 'Alvin3*'
}

Install-ChocolateyInstallPackage @packageArgs

New-Item -ItemType directory -Path C:\Alvin3\backup\
Move-Item -Path C:\Alvin3\lua\ -Destination C:\Alvin3\backup\
Move-Item -Path C:\Alvin3\phonetics\ -Destination C:\Alvin3\backup\
Move-Item -Path C:\Alvin3\sampleexperiment\ -Destination C:\Alvin3\backup\
Copy-Item -Path \\10.0.0.6\files\alvin3\Alvin3files.zip -Destination C:\Alvin3\
Expand-Archive -Path C:\Alvin3\Alvin3Files.zip -DestinationPath C:\Alvin3\
Remove-Item C:\Alvin3\Alvin3Files.zip