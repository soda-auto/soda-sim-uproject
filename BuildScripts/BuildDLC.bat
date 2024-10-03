:: SET UE_ROOT=
:: SET SODA_SIM_ROOT=
:: SET EXTRA_PLUGINS_ROOT=
:: SET DLC_ARCHIVE_DIR=
:: SET CUSTOM_CONFIG=
:: SET PLATFORM=

:: SET DLC_NAME=
:: SET MAPS=
:: SET DLC_MOUNT_TARGET=
:: SET DLC_MOUNT_LINK=

rmdir /s /q %SODA_SIM_ROOT%\Content
mkdir %DLC_MOUNT_LINK%\..\

rmdir /s /q %UPROJ_EXT_PLUGINS_DIR%
mkdir %UPROJ_EXT_PLUGINS_DIR%

if not "%DLC_MOUNT_LINK%"=="" mklink /j %DLC_MOUNT_LINK% %DLC_MOUNT_TARGET% || exit /b 1
if not "%EXT_PLUGIN_NAME%"=="" mklink /j %UPROJ_EXT_PLUGINS_DIR%\%EXT_PLUGIN_NAME% %EXTRA_PLUGINS_ROOT%\%EXT_PLUGIN_NAME% || exit /b 1

call %UE_ROOT%\Engine\Build\BatchFiles\RunUAT.bat BuildCookRun ^
    -project=%SODA_SIM_ROOT%\SodaSimProject.uproject ^
    -noP4 ^
    -clientconfig=Development ^
    -serverconfig=Development ^
    -nocompile ^
    -nocompileeditor ^
    -installed ^
    -utf8output ^
    -platform=%PLATFORM% ^
    -build ^
    -cook ^
    -map=%MAPS% ^
    -CookCultures=en ^
    -unversionedcookedcontent ^
    -pak ^
    -iostore ^
    -compressed ^
    -dlcname=%DLC_NAME% ^
    -DLCIncludeEngineContent ^
    -generatepatch ^
    -addpatchlevel ^
    -basedonreleaseversion=SodaSimProjectBase ^
    -manifests ^
    -stage ^
    -package ^
    -archive ^
    -archivedirectory=%DLC_ARCHIVE_DIR% ^
    -CustomConfig=%CUSTOM_CONFIG% ^
    -additionalcookeroptions=-CustomConfig=%CUSTOM_CONFIG%
	
exit /B %ERRORLEVEL%