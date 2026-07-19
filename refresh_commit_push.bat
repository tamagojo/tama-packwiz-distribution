@echo off
cd /d "%~dp0"
packwiz refresh
if errorlevel 1 (
    echo.
    echo Packwiz refresh failed.
    pause
    exit /b 1
)

git add -A
if errorlevel 1 (
    echo.
    echo git add failed.
    pause
    exit /b 1
)

git commit -m "Update modpack"
if errorlevel 1 (
    echo.
    echo Nothing to commit, or git commit failed.
)

git push
pause
