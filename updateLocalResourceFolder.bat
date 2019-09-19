@echo off
setlocal enableextensions
cd /d "%~dp0"

echo.
echo -------------------------------------------------------------------------------
echo Kopiere den Inhalt des DataPath und dll in Resources
echo -------------------------------------------------------------------------------
echo.
if not exist "Resources" md "Resources"
if not exist "Resources\Library" md "Resources\Library"
if not exist "Resources\Library\win32" md "Resources\Library\win32"
if not exist "Resources\Library\win64" md "Resources\Library\win64"
if not exist "Resources\Library\linux32" md "Resources\Library\linux32"
if not exist "Resources\Library\linux64" md "Resources\Library\linux64"
xcopy .\DataPath_ExternalData\*.dat "Resources" /s /Y /Q

xcopy "binaries\32bit\*.dll" "Resources\Library\win32" /Q /Y
xcopy "binaries\32bit\*.lib" "Resources\Library\win32" /Q /Y
xcopy "binaries\32bit\*.a" "Resources\Library\win32" /Q /Y
xcopy "binaries\64bit\*.dll" "Resources\Library\win64" /Q /Y
xcopy "binaries\64bit\*.lib" "Resources\Library\win64" /Q /Y
xcopy "binaries\64bit\*.a" "Resources\Library\win64" /Q /Y
xcopy "binaries\32bit\*.so" "Resources\Library\linux32" /Q /Y
xcopy "binaries\64bit\*.so" "Resources\Library\linux64" /Q /Y

del binaries
del DataPath_ExternalData
del update.bat

:END
echo.
PAUSE
