$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.17.1/marp-cli-v0.17.1-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = '8ec08166ff8b1a08f2bab998975b631008502f8ce568b453bd4512c6ca924dbf'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs