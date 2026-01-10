# Mtech APK Build Script
# Run this after installing Apktool

$ErrorActionPreference = "Stop"

$ProjectDir = "C:\Projetos\BRTV"
$ApkToolDir = "$ProjectDir\BRTV-10.3.3-Std"
$OutputApk = "$ProjectDir\Mtech-10.3.3.apk"
$UnsignedApk = "$ProjectDir\Mtech-unsigned.apk"
$Keystore = "$ProjectDir\mtech.keystore"

Write-Host "=== Mtech APK Build Script ===" -ForegroundColor Cyan

# Check for Apktool
try {
    $apktoolVersion = & apktool --version 2>$null
    Write-Host "Apktool found: $apktoolVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Apktool not found in PATH" -ForegroundColor Red
    Write-Host "Download from: https://apktool.org/" -ForegroundColor Yellow
    Write-Host "Or install via: scoop install apktool" -ForegroundColor Yellow
    exit 1
}

# Step 1: Build APK
Write-Host "`nStep 1: Building APK with Apktool..." -ForegroundColor Yellow
apktool b $ApkToolDir -o $UnsignedApk
if ($LASTEXITCODE -ne 0) { throw "Apktool build failed" }
Write-Host "Unsigned APK created: $UnsignedApk" -ForegroundColor Green

# Step 2: Generate keystore if not exists
if (-not (Test-Path $Keystore)) {
    Write-Host "`nStep 2: Generating keystore..." -ForegroundColor Yellow
    keytool -genkey -v -keystore $Keystore -alias mtech -keyalg RSA -keysize 2048 -validity 10000 `
        -dname "CN=Mtech, OU=Dev, O=Mtech, L=BR, ST=SP, C=BR" -storepass mtech123 -keypass mtech123
    Write-Host "Keystore created: $Keystore" -ForegroundColor Green
} else {
    Write-Host "`nStep 2: Keystore already exists" -ForegroundColor Green
}

# Step 3: Sign APK
Write-Host "`nStep 3: Signing APK..." -ForegroundColor Yellow
try {
    # Try apksigner first
    apksigner sign --ks $Keystore --ks-pass pass:mtech123 --out $OutputApk $UnsignedApk
    Write-Host "APK signed with apksigner" -ForegroundColor Green
} catch {
    # Fallback to jarsigner
    Write-Host "apksigner not found, using jarsigner..." -ForegroundColor Yellow
    jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $Keystore `
        -storepass mtech123 $UnsignedApk mtech
    Copy-Item $UnsignedApk $OutputApk
    Write-Host "APK signed with jarsigner" -ForegroundColor Green
}

# Step 4: Verify
Write-Host "`nStep 4: Verifying APK..." -ForegroundColor Yellow
if (Test-Path $OutputApk) {
    $size = (Get-Item $OutputApk).Length / 1MB
    Write-Host "SUCCESS! Mtech APK created: $OutputApk" -ForegroundColor Green
    Write-Host "Size: $([math]::Round($size, 2)) MB" -ForegroundColor Cyan
} else {
    throw "APK creation failed"
}

Write-Host "`n=== Build Complete ===" -ForegroundColor Cyan
Write-Host "Install with: adb install $OutputApk" -ForegroundColor Yellow
