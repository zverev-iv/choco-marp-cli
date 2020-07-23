$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.18.3/marp-cli-v0.18.3-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '1477bf86dc7ab37a4af5a169d0baec9b843d8b3dd1441defefd52e80ab8c90e3'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
