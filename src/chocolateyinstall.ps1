$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url           = "https://github.com/marp-team/marp-cli/releases/download/v0.23.2/marp-cli-v0.23.2-win.zip"
  softwareName  = "marp-cli*"
  checksum      = "E95AF343186AE7C6271BDA12DEA4F27DF649589A4A01BB00544E6E5183DDA7E2"
  checksumType  = "sha256"
}

Install-ChocolateyZipPackage @packageArgs
