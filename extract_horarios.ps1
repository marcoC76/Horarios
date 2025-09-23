$content = Get-Content -Raw -LiteralPath 'index.html'
if ($content -match 'const\s+horariosData\s*=\s*(\[[\s\S]*?\])') {
    $json = $matches[1]
    Set-Content -LiteralPath 'horarios.json' -Value $json -Encoding UTF8
    Write-Output 'OK'
}
else {
    Write-Error 'No se encontró horariosData'
    exit 1
}
