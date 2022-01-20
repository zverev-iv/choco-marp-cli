$ErrorActionPreference = 'Stop';

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	url           = "https://github.com/marp-team/marp-cli/releases/download/v1.5.1/marp-cli-v1.5.1-win.zip"
	softwareName  = "marp-cli*"
	checksum      = "54eb621a7b775f52b3b84b8e1327bb148af82202fd4e8324ab5fe1a195cedf08"
	checksumType  = "sha256"
}

Install-ChocolateyZipPackage @packageArgs
