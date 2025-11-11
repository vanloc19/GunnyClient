@echo off
setlocal

REM ============================================
REM Build bagAndInfo.swf
REM ============================================

set FLEX_HOME=C:\flex_sdk_4.16.1
set MXMLC=%FLEX_HOME%\bin\mxmlc.bat

set ENTRY_POINT=src\bagAndInfo\BagAndInfoFrame.as
set OUTPUT=..\Flash\ui\spain\swf\bagAndInfo.swf
set LIB_PATH=lib\EasyGunny.swc

echo.
echo ========================================
echo Building bagAndInfo.swf
echo ========================================
echo.

REM Check EasyGunny.swc exists
if not exist "%LIB_PATH%" (
    echo ERROR: EasyGunny.swc not found!
    echo Please build EasyGunny.swc first using build.xml
    pause
    exit /b 1
)

REM Build bagAndInfo.swf with external library reference
echo Building bagAndInfo.swf with external library reference...
"%MXMLC%" ^
    "%ENTRY_POINT%" ^
    -source-path+="src" ^
    -external-library-path+="lib" ^
    -output="%OUTPUT%" ^
    -target-player="11.0" ^
    -swf-version="15" ^
    -optimize=true ^
    -omit-trace-statements=true ^
    -compress=true ^
    -debug=false ^
    -warnings=false

if errorlevel 1 (
    echo.
    echo ERROR: Failed to build bagAndInfo.swf
    pause
    exit /b 1
) else (
    echo.
    echo ========================================
    echo SUCCESS: %OUTPUT%
    echo ========================================
    echo.
    echo File size:
    dir "%OUTPUT%" | find "bagAndInfo"
    echo.
    echo NOTE: This SWF requires EasyGunny.swc to be loaded at runtime
)

pause

