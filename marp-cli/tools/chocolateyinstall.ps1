$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.23.0/marp-cli-v0.23.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = 'F958782184F216240D26917E3737036025E00A6E0744C6E67E6D9F5EE5E35960'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
