@echo off
chcp 65001 > nul
setlocal
echo @echo off > "%~dp0/deactivate_conanautotoolstoolchain.bat"
echo echo Restoring environment >> "%~dp0/deactivate_conanautotoolstoolchain.bat"
for %%v in (CPPFLAGS CXXFLAGS CFLAGS LDFLAGS PKG_CONFIG_PATH) do (
    set foundenvvar=
    for /f "delims== tokens=1,2" %%a in ('set') do (
        if /I "%%a" == "%%v" (
            echo set "%%a=%%b">> "%~dp0/deactivate_conanautotoolstoolchain.bat"
            set foundenvvar=1
        )
    )
    if not defined foundenvvar (
        echo set %%v=>> "%~dp0/deactivate_conanautotoolstoolchain.bat"
    )
)
endlocal


set "CPPFLAGS=%CPPFLAGS% -DNDEBUG"
set "CXXFLAGS=%CXXFLAGS% /std:c++14 -MD -O2 -Ob2 -FS"
set "CFLAGS=%CFLAGS% -MD -O2 -Ob2 -FS"
set "LDFLAGS=%LDFLAGS%"
set "PKG_CONFIG_PATH=%~dp0\..\..\build\generators;%PKG_CONFIG_PATH%"