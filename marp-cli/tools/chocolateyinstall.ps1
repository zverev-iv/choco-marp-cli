$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.17.2/marp-cli-v0.17.2-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '0bca1b27cf1175c39bb18cbca8e7db77d831e0e75a902e19beef6ac0be0364ad'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs