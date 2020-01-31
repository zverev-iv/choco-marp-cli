$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.17.0/marp-cli-v0.17.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '20802f86d54ef81acb5948f48fdac07bd6e529068569d6758a4f139e89cab617'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs