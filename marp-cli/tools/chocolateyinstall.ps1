https://github.com/marp-team/marp-cli/releases/download/v0.17.4/marp-cli-v0.17.4-win.zip﻿$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/marp-team/marp-cli/releases/download/v0.17.4/marp-cli-v0.17.4-win.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = 'marp-cli*'
  checksum      = 'f40bbf56921581f16f6c7e510c2f3855b025be1f1d67fb7f5c8590460c738647'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
