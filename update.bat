@echo off
setlocal enableextensions
cd /d "%~dp0"

echo.
echo -------------------------------------------------------------------------------
echo Kopiere den Inhalt des DataPath (Refprop, Interpolationsmedien)
echo -------------------------------------------------------------------------------
echo.
if not exist "%ALLUSERSPROFILE%\TLK-Thermo GmbH" md "%ALLUSERSPROFILE%\TLK-Thermo GmbH"
if not exist "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia" md "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia"
if not exist "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" md "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa"
xcopy .\DataPath_ExternalData\*.fld "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O
xcopy .\DataPath_ExternalData\*.dat "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O
xcopy .\DataPath_ExternalData\*.ppf "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O
xcopy .\DataPath_ExternalData\*.bnc "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O
xcopy .\DataPath_ExternalData\*.mix "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O
xcopy .\DataPath_ExternalData\*.dll "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O
xcopy .\DataPath_ExternalData\*.cfg "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.2.1 ClaRa" /s /Y /Q /O


IF "%PROGRAMFILES(x86)%" == "" goto x86
goto x64


:x86
echo.
echo.
echo -------------------------------------------------------------------------------
echo System identified as x86
echo -------------------------------------------------------------------------------
echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x86):
FOR /f "tokens=*" %%a in ('dir "binaries\32bit\*.dll" /B') DO echo      "%%a"
echo ins System-Verzeichnis %systemroot%\System32
echo.
xcopy "binaries\32bit\*.dll" "%systemroot%\System32" /Q /Y /O

echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien:
FOR /f "tokens=*" %%a in ('dir "binaries\32bit\*TILMedia*.lib" /B') DO echo      "%%a"
echo in folgende Dymola Installationsverzeichnisse:
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles%\Dymola*" /A:D /B') DO echo      "%ProgramFiles%\%%a\bin\lib"
echo.
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles%\Dymola*" /A:D /B') DO xcopy "binaries\32bit\*TILMedia*.lib" "%ProgramFiles%\%%a\bin\lib" /Q /Y /O
goto END

:x64
echo.
echo.
echo -------------------------------------------------------------------------------
echo System identified as x64
echo -------------------------------------------------------------------------------
echo.
echo Kopiere folgende Dateien (x86):
FOR /f "tokens=*" %%a in ('dir "binaries\32bit\*.dll" /B') DO echo      "%%a"
echo ins System-Verzeichnis %systemroot%\SysWOW64
echo.
xcopy "binaries\32bit\*.dll" "%systemroot%\SysWOW64" /Q /Y /O
echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x64):
FOR /f "tokens=*" %%a in ('dir "binaries\64bit\*.dll" /B') DO echo      "%%a"
echo ins System-Verzeichnis %systemroot%\System32
echo.
xcopy "binaries\64bit\*.dll" "%systemroot%\System32" /Q /Y /O

echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x86):
FOR /f "tokens=*" %%a in ('dir "binaries\32bit\*TILMedia*.lib" /B') DO echo      "%%a"
echo in folgende Dymola Installationsverzeichnisse:
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO echo      "%ProgramFiles(x86)%\%%a\bin\lib"
echo.
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO xcopy "binaries\32bit\*TILMedia*.lib" "%ProgramFiles(x86)%\%%a\bin\lib" /Q /Y /O
echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x64):
FOR /f "tokens=*" %%a in ('dir "binaries\32bit\*TILMedia*.lib" /B') DO echo      "%%a"
echo in folgende Dymola Installationsverzeichnisse:
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO echo      "%ProgramFiles(x86)%\%%a\bin\lib64"
echo.
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO xcopy "binaries\64bit\*TILMedia*.lib" "%ProgramFiles(x86)%\%%a\bin\lib64" /Q /Y /O
goto END

:END
echo.
PAUSE
