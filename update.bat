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
if not exist "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa" md "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa"
xcopy .\externals\Refprop\*.fld "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa" /s /Y /Q /O
xcopy .\externals\Refprop\*.dat "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa" /s /Y /Q /O
xcopy .\externals\Refprop\*.ppf "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa" /s /Y /Q /O
xcopy .\externals\Refprop\*.bnc "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa" /s /Y /Q /O
xcopy .\externals\Refprop\*.mix "%ALLUSERSPROFILE%\TLK-Thermo GmbH\TILMedia\1.0.0 ClaRa" /s /Y /Q /O

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
FOR /f "tokens=*" %%a in ('dir "externals\release\*.dll" /B') DO echo      "%%a"
echo ins System-Verzeichnis %systemroot%\System32
echo.
xcopy "externals\release\*.dll" "%systemroot%\System32" /Q /Y /O

echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien:
FOR /f "tokens=*" %%a in ('dir "externals\release\*TILMedia*.lib" /B') DO echo      "%%a"
echo in folgende Dymola Installationsverzeichnisse:
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles%\Dymola*" /A:D /B') DO echo      "%ProgramFiles%\%%a\bin\lib"
echo.
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles%\Dymola*" /A:D /B') DO xcopy "externals\release\*TILMedia*.lib" "%ProgramFiles%\%%a\bin\lib" /Q /Y /O
goto END

:x64
echo.
echo.
echo -------------------------------------------------------------------------------
echo System identified as x64
echo -------------------------------------------------------------------------------
echo.
echo Kopiere folgende Dateien (x86):
FOR /f "tokens=*" %%a in ('dir "externals\release\*.dll" /B') DO echo      "%%a"
echo ins System-Verzeichnis %systemroot%\SysWOW64
echo.
xcopy "externals\release\*.dll" "%systemroot%\SysWOW64" /Q /Y /O
echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x64):
FOR /f "tokens=*" %%a in ('dir "externals\release_x64\*.dll" /B') DO echo      "%%a"
echo ins System-Verzeichnis %systemroot%\System32
echo.
xcopy "externals\release_x64\*.dll" "%systemroot%\System32" /Q /Y /O

echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x86):
FOR /f "tokens=*" %%a in ('dir "externals\release\*TILMedia*.lib" /B') DO echo      "%%a"
echo in folgende Dymola Installationsverzeichnisse:
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO echo      "%ProgramFiles(x86)%\%%a\bin\lib"
echo.
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO xcopy "externals\release\*TILMedia*.lib" "%ProgramFiles(x86)%\%%a\bin\lib" /Q /Y /O
echo.
echo -------------------------------------------------------------------------------
echo Kopiere folgende Dateien (x64):
FOR /f "tokens=*" %%a in ('dir "externals\release\*TILMedia*.lib" /B') DO echo      "%%a"
echo in folgende Dymola Installationsverzeichnisse:
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO echo      "%ProgramFiles(x86)%\%%a\bin\lib64"
echo.
FOR /f "tokens=*" %%a in ('dir "%ProgramFiles(x86)%\Dymola*" /A:D /B') DO xcopy "externals\release_x64\*TILMedia*.lib" "%ProgramFiles(x86)%\%%a\bin\lib64" /Q /Y /O
goto END

:END
echo.
PAUSE
