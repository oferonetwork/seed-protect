@echo off
if "%~1"=="" (
    echo Please drag and drop a .jpg file onto this .bat file.
    pause
    exit /b
)

set jpgfile=%~1

if /i not "%~x1"==".jpg" (
    echo Error: The file must be a .jpg file.
    pause
    exit /b
)
set jpgdir=%~dp1

echo Extracting hidden file from "%jpgfile%"...
cd steghide
steghide extract -sf "%jpgfile%" -xf "%jpgdir%decrypt.txt"
if errorlevel 1 (
    echo Extraction failed. Please check the input file or Steghide installation.
    pause
    exit /b
)

echo Extraction successful!
pause
