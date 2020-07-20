$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.17.3/marp-cli-v0.17.3-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '109abf9efd71fac7a24467b56498e1d9e19d4ceb20d220d523f2ab185c726872'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
