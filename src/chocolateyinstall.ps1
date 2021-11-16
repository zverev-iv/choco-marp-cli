$ErrorActionPreference = 'Stop';

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	url           = "https://github.com/marp-team/marp-cli/releases/download/v1.4.2/marp-cli-v1.4.2-win.zip"
	softwareName  = "marp-cli*"
	checksum      = "CAB6411B3AA201F5CFAAB128D036BC3A631A89EE3B6D3720178D019716A49123"
	checksumType  = "sha256"
}

Install-ChocolateyZipPackage @packageArgs
