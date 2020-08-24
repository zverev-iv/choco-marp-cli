$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.21.0/marp-cli-v0.21.0-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = 'b9a7cff28af28e2b1dfa51abdf374fa86009d4796d1930bf121c0ee79dd656ed'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
