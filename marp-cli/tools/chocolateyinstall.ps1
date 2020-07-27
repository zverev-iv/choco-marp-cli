$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.20.0/marp-cli-v0.20.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = 'fb1a86d95838fd85a0efc9433f83596e003acf5c6eab98936f5366afcebcec1e'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
