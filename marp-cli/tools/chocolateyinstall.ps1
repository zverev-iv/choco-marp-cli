$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.21.1/marp-cli-v0.21.1-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '9338bb9e371c7829dddc2f6cac6be00ab10163c8680ff943f33be26684f38860'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
