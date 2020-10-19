$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.22.0/marp-cli-v0.22.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '96e786d90cf8fcd2bf30653648a2704add6c7739f027115090e224a27498dcc2'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
