param(
  [string]$Configuration = "Release",
  [string]$Platform = "x64",
  [string]$Solution = "Mugen-Bets.slnx",
  [string]$OutputZip = "Mugen-Bets-local.zip"
)

Write-Host "Building solution $Solution ($Configuration|$Platform)..."
msbuild $Solution /m /p:Configuration=$Configuration /p:Platform=$Platform

$exe = Get-ChildItem -Path . -Filter *.exe -Recurse | Where-Object { $_.Name -match 'Mugen-Bets.exe' } | Select-Object -First 1
if (-not $exe) { Write-Error "Executable not found"; exit 1 }

$outDir = Join-Path -Path (Get-Location) -ChildPath "build_artifact"
if (Test-Path $outDir) { Remove-Item -Recurse -Force $outDir }
New-Item -ItemType Directory -Path $outDir | Out-Null

Copy-Item -Path $exe.FullName -Destination $outDir -Force

$folders = @('mugen-1.1b1','data','stages','sound')
foreach ($f in $folders) {
  if (Test-Path $f) { Copy-Item -Path $f -Destination $outDir -Recurse -Force }
}

Get-ChildItem -Path (Split-Path $exe.FullName) -Include *.dll,*.pdb -File | ForEach-Object { Copy-Item -Path $_.FullName -Destination $outDir -Force }

if (Test-Path $OutputZip) { Remove-Item $OutputZip }
Compress-Archive -Path (Join-Path $outDir '*') -DestinationPath $OutputZip -Force
Write-Host "Created $OutputZip"
