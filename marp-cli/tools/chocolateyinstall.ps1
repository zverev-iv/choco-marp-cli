$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.18.1/marp-cli-v0.18.1-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = 'f6db3384680c84601a68df60ed196f0fcfda2f5ba8690e545aad9acfab8d68ea'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
