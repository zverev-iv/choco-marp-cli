$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.22.1/marp-cli-v0.22.1-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '1AB6246C9B1EEABB6B3549D0AC9E057C2E8F0F167E938D5FA4571E3877C8C9CE'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
