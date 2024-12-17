@echo off

if "%~2"=="" (
    echo Please drag and drop both a .txt file and a .jpg file onto this .bat file.
    pause
    exit /b
)

set file1=%~1
set file2=%~2

if /i "%~x1"==".txt" (
    set txtfile=%file1%
    set jpgfile=%file2%
) else if /i "%~x2"==".txt" (
    set txtfile=%file2%
    set jpgfile=%file1%
) else (
    echo Error: One of the files must be a .txt file.
    pause
    exit /b
)

if /i not "%~x1"==".jpg" if /i not "%~x2"==".jpg" (
    echo Error: One of the files must be a .jpg file.
    pause
    exit /b
)
echo Thank you for using Ofero Network's Security Tools!
echo Encrypting "%txtfile%" into "%jpgfile%"...
cd steghide
steghide embed -cf "%jpgfile%" -ef "%txtfile%"
if errorlevel 1 (
    echo Encrypting failed. Please check the input files or Steghide installation.
    pause
    exit /b
)
del "%txtfile%"
echo Encrypting successful!
pause
