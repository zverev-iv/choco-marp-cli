$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url           = "https://github.com/marp-team/marp-cli/releases/download/v0.23.3/marp-cli-v0.23.3-win.zip"
  softwareName  = "marp-cli*"
  checksum      = "2F72E8B7EA77BD2D59B258430148D34B0D3ACA5179AF8C1F24E1DEDC74380205"
  checksumType  = "sha256"
}

Install-ChocolateyZipPackage @packageArgs
