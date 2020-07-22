$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.18.2/marp-cli-v0.18.2-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = 'fe2dffaeaeeb971acbc8f8db39f07085d26099c3aaad3c599445ef3595a19be2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
