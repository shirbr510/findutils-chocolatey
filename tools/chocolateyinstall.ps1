$ErrorActionPreference = 'Stop';

$packageName = 'findutils'
$url = 'https://sourceforge.net/projects/ezwinports/files/findutils-4.2.30-5-w32-bin.zip/download'
$checksum = 'EDDB6D448B91590CB1A852422B5695D8B2035B8B85F472AB7B671A85C93112FA'
$url64 = 'https://sourceforge.net/projects/ezwinports/files/findutils-4.2.30-5-w64-bin.zip/download'
$checksum64 = '99E5621E5CEBE0D952601EB07491201D223C07B53916F9C704D3EA17FDF97F00'

$root = Join-Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)" "install"

New-Item -ItemType Directory -Force -Path $root | Out-Null

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$root" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType 'sha256' -Checksum64 "$checksum64" -ChecksumType64 'sha256'