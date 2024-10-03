:: 7ZIP_ROOT=
:: SET DLC_ARCHIVE_DIR=
:: SET PLATFORM=
:: SET DLC_NAME=
:: SET DLC_MOUNT_TARGET=

@echo off
setlocal

if not x%PLATFORM:Win64=%==x%PLATFORM% call :MakeRel Windows
if not x%PLATFORM:Linux=%==x%PLATFORM% call :MakeRel Linux

echo -----------------------------------------------
echo Finish!
exit /B

:MakeRel
    SET PARAM_1=%~1
    pushd %REL_ARCHIVE_DIR%
	"%ZIP_BIN%" a %REL_ARCHIVE_DIR%\SodaSimProject-%PARAM_1%%RELEASE_NAME_POSTFIX%.zip %REL_ARCHIVE_DIR%\%PARAM_1% -mx3
	popd
	exit /B 0
	