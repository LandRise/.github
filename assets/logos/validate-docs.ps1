# Logo Documentation Validation Script
# This script checks if all files referenced in the documentation actually exist

Write-Host "LandRise Logo Documentation Validation" -ForegroundColor Green
Write-Host "======================================" -ForegroundColor Green
Write-Host ""

$logoPath = "N:\_clients\client-landrise\.github\assets\logos"
Set-Location $logoPath

# Arrays of files that should exist based on documentation
$svgFiles = @(
    "svg/landrise-logo-main.svg",
    "svg/landrise-logo-main-current.svg",
    "svg/landrise-logo-monochrome-transparent.svg",
    "svg/landrise-logo-monochrome-transparent.min.svg"
)

$pngFiles = @(
    "png/landrise-logo-main-current.png",
    "png/landrise-logo-color-transparent.png",
    "png/landrise-logo-color-white.png",
    "png/landrise-logo-black-transparent.png",
    "png/landrise-logo-white-transparent.png",
    "png/landrise-logo-monochrome-transparent.png",
    "png/landrise-logo-dark-theme.png",
    "png/landrise-logo-light-theme.png"
)

$webpFiles = @(
    "webp/landrise-logo-main-current.webp",
    "webp/landrise-logo-color-transparent.webp",
    "webp/landrise-logo-black-transparent.webp",
    "webp/landrise-logo-white-transparent.webp",
    "webp/landrise-logo-dark-theme.webp",
    "webp/landrise-logo-light-theme.webp"
)

$originalFiles = @(
    "original/landrise-logo-original-v1.svg",
    "original/landrise-logo-original-color.svg",
    "original/landrise-logo-original-monochrome-transparent.png",
    "original/landrise-logo-original-monochrome-white.png",
    "original/landrise-logo-original-color-transparent.png",
    "original/landrise-logo-original-color-white.png"
)

$allFiles = $svgFiles + $pngFiles + $webpFiles + $originalFiles
$missingFiles = @()
$foundFiles = 0

Write-Host "Checking file existence..." -ForegroundColor Yellow
Write-Host ""

foreach ($file in $allFiles) {
    if (Test-Path $file) {
        Write-Host "✓ $file" -ForegroundColor Green
        $foundFiles++
    } else {
        Write-Host "✗ $file" -ForegroundColor Red
        $missingFiles += $file
    }
}

Write-Host ""
Write-Host "Summary:" -ForegroundColor Cyan
Write-Host "Found: $foundFiles files" -ForegroundColor Green
Write-Host "Missing: $($missingFiles.Count) files" -ForegroundColor Red

if ($missingFiles.Count -gt 0) {
    Write-Host ""
    Write-Host "Missing files that need to be created or documentation updated:" -ForegroundColor Red
    foreach ($file in $missingFiles) {
        Write-Host "  - $file" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Checking for extra files not in documentation..." -ForegroundColor Yellow

# Check for files that exist but aren't documented
$actualSvgFiles = Get-ChildItem "svg/*.svg" | ForEach-Object { "svg/$($_.Name)" }
$actualPngFiles = Get-ChildItem "png/*.png" | ForEach-Object { "png/$($_.Name)" }
$actualWebpFiles = Get-ChildItem "webp/*.webp" | ForEach-Object { "webp/$($_.Name)" }
$actualOriginalFiles = Get-ChildItem "original/*" | ForEach-Object { "original/$($_.Name)" }

$extraFiles = @()

foreach ($file in ($actualSvgFiles + $actualPngFiles + $actualWebpFiles + $actualOriginalFiles)) {
    if ($file -notin $allFiles) {
        $extraFiles += $file
    }
}

if ($extraFiles.Count -gt 0) {
    Write-Host ""
    Write-Host "Extra files found (not documented):" -ForegroundColor Yellow
    foreach ($file in $extraFiles) {
        Write-Host "  + $file" -ForegroundColor Yellow
    }
    Write-Host ""
    Write-Host "Consider adding these to documentation or removing if unnecessary." -ForegroundColor Yellow
} else {
    Write-Host "No extra files found. Documentation is complete!" -ForegroundColor Green
}

Write-Host ""
if ($missingFiles.Count -eq 0 -and $extraFiles.Count -eq 0) {
    Write-Host "✅ All documentation is valid and up-to-date!" -ForegroundColor Green
} else {
    Write-Host "⚠️  Documentation needs updates." -ForegroundColor Yellow
}
