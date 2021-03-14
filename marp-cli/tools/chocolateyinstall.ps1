$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url           = "https://github.com/marp-team/marp-cli/releases/download/v0.23.1/marp-cli-v0.23.1-win.zip"
  softwareName  = "marp-cli*"
  checksum      = "A26623A3FB608C00482F57BB7AA294968D128890EB0564DE9EC8EA06B5743AB0"
  checksumType  = "sha256"
}

Install-ChocolateyZipPackage @packageArgs
