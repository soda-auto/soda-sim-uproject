:: 7ZIP_ROOT=
:: SET DLC_ARCHIVE_DIR=
:: SET PLATFORM=
:: SET DLC_NAME=
:: SET DLC_MOUNT_TARGET=

@echo off
setlocal

if not x%PLATFORM:Win64=%==x%PLATFORM% call :MakeDLC Windows
if not x%PLATFORM:Linux=%==x%PLATFORM% call :MakeDLC Linux

echo -----------------------------------------------
echo Finish!
exit /B

:MakeDLC
	SET PARAM_1=%~1
	SET ARCHIVE_ROOT=%DLC_ARCHIVE_DIR%\%PARAM_1%\SodaSimProject\Plugins\%DLC_NAME%\Content\Paks\%PARAM_1%
    move %ARCHIVE_ROOT%\%DLC_NAME%pakchunk0-%PARAM_1%_0_P.pak %ARCHIVE_ROOT%\%DLC_NAME%-%PARAM_1%_0_P.pak_uninstalled
	move %ARCHIVE_ROOT%\%DLC_NAME%pakchunk0-%PARAM_1%_0_P.ucas %ARCHIVE_ROOT%\%DLC_NAME%-%PARAM_1%_0_P.ucas
	move %ARCHIVE_ROOT%\%DLC_NAME%pakchunk0-%PARAM_1%_0_P.utoc %ARCHIVE_ROOT%\%DLC_NAME%-%PARAM_1%_0_P.utoc
    if exist %DLC_MOUNT_TARGET%\in.spak (
        copy %DLC_MOUNT_TARGET%\in.spak %ARCHIVE_ROOT%\%DLC_NAME%-%PARAM_1%_0_P.spak
    )
	"%ZIP_BIN%" a %DLC_ARCHIVE_DIR%\%DLC_NAME%-%PARAM_1%.zip %ARCHIVE_ROOT%\%DLC_NAME%-%PARAM_1%_0_P.* -mx0
	exit /B 0
	