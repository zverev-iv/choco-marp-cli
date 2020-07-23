$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.19.0/marp-cli-v0.19.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '680d3809f6401962134ebc7f6080da2893ddbd9ae1fdf2f76cba7aecf9ca7799'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
