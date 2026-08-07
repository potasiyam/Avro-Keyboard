@echo off


rem
rem  Batch file to prepare a release
rem
rem
rem  This batch files does the following things:
rem  -Ask the user to compile Avro projects after clearing output first
rem
rem  Once done the built files can be found in build directory

setlocal

set VER=5.7.0

echo Building Avro Keyboard %VER%...
echo.

cd /d %~dp0


echo - Cleaning up compilation output
call :deletefile build\Avro_Keyboard.exe
call :deletefile "build\Avro Keyboard.exe"
call :deletefile build\Avro_Spell_Checker.exe
call :deletefile "build\Avro Spell Checker.exe"
call :deletefile build\LayoutEditor.exe
call :deletefile "build\Layout Editor.exe"
call :deletefile build\SkinDesigner.exe
call :deletefile "build\Skin Designer.exe"
call :deletefile build\Unicode_to_Bijoy.exe
call :deletefile "build\Unicode to Bijoy.exe"
call :deletefile build\AvroSpell.dll

echo Clearing compilation output done
echo Now open WholeProject.groupproj and build all projects in Release mode

echo - Waiting for files...
call :waitforfile build\Avro_Keyboard.exe
call :waitforfile build\AvroSpell.dll
call :waitforfile build\Avro_Spell_Checker.exe
call :waitforfile build\LayoutEditor.exe
call :waitforfile build\SkinDesigner.exe
call :waitforfile build\Unicode_to_Bijoy.exe

echo Found all, waiting 2 seconds more...
timeout /t 2 /nobreak >nul
echo Compiling done


echo - Renaming files
cd build
if errorlevel 1 goto failed
move /y Avro_Keyboard.exe "Avro Keyboard.exe"
move /y Avro_Spell_Checker.exe "Avro Spell Checker.exe"
move /y LayoutEditor.exe "Layout Editor.exe"
move /y SkinDesigner.exe "Skin Designer.exe"
move /y Unicode_to_Bijoy.exe "Unicode to Bijoy.exe"
if errorlevel 1 goto failed

cd ..

echo - Copying mouse glyph assets
if exist assets\mouse-glyphs\*.svg (
    if not exist build\mouse-glyphs mkdir build\mouse-glyphs
    copy /y assets\mouse-glyphs\*.svg build\mouse-glyphs\ >nul
    echo Copied mouse glyphs to build\mouse-glyphs
) else (
    echo Skipped - no assets\mouse-glyphs\*.svg found
)

echo - Copying Skia runtime (sk4d.dll)
if defined BDS (
    copy /y "%BDS%\bin64\sk4d.dll" build\ >nul 2>&1
    if exist "%BDS%\bin64\sk4d.dll" echo Copied sk4d.dll from BDS
) else (
    if exist "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin64\sk4d.dll" (
        copy /y "C:\Program Files (x86)\Embarcadero\Studio\23.0\bin64\sk4d.dll" build\ >nul
        echo Copied sk4d.dll from default BDS path
    ) else (
        echo WARNING - sk4d.dll not found, copy it manually next to the exe
    )
)

echo All done!
pause
exit /b 0

:failed
echo *** FAILED ***
pause
exit /b 1

:deletefile
if exist "%~1" (
    del "%~1"
    if exist "%~1" goto failed
    echo Cleared %~1
)
exit /b

:waitforfile
if not exist "%~1" (
    timeout /t 1 /nobreak >nul
    goto waitforfile
)
echo Found %~1
exit /b