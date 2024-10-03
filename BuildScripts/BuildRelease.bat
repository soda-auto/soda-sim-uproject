:: SET UE_ROOT=
:: SET SODA_SIM_ROOT=
:: SET REL_ARCHIVE_DIR=
:: SET PLATFORM=

::rmdir /s /q %SODA_SIM_ROOT%\Content
rmdir /s /q %UPROJ_EXT_PLUGINS_DIR%

%UE_ROOT%\Engine\Build\BatchFiles\RunUAT.bat BuildCookRun ^
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
    -CookCultures=en ^
    -unversionedcookedcontent ^
    -pak ^
    -iostore ^
    -compressed ^
    -createreleaseversion=SodaSimProjectBase ^
    -prereqs ^
    -manifests ^
    -stage ^
    -package ^
    -archive ^
    -archivedirectory=%REL_ARCHIVE_DIR%
