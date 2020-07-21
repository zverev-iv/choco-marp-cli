$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.18.0/marp-cli-v0.18.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '00be4518134032b9773f9c0956e89390d48b9d2650c4ad5fd8ec010fe51d68cd'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
