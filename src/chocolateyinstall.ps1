$ErrorActionPreference = 'Stop';

$packageArgs = @{
	packageName   = $env:ChocolateyPackageName
	unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	url           = "${url}"
	softwareName  = "${softwareName}*"
	checksum      = "${checksum}"
	checksumType  = "${checksumType}"
}

Install-ChocolateyZipPackage @packageArgs
