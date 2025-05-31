@echo off
setlocal enabledelayedexpansion
color 02
cls
TITLE System Boot - Secure Terminal
mode con: cols=70 lines=37

:: Matrix-style "hacking" rain effect
for /L %%i in (1,1,100) do (
    set "line="
    for /L %%j in (1,1,70) do (
        set /a "rand=!random! %% 2"
        if !rand! == 0 (
            set "char=1"
        ) else (
            set "char=0"
        )
        set "line=!line!!char!"
    )
    echo !line!
    ping 127.0.0.1 -n 1 >nul
)

:: Dramatic pause
echo.
echo Decrypting hidden archive...
ping 127.0.0.1 -n 3 >nul
cls

:: Rickroll time
TITLE Never Gonna Give You Up
curl ascii.live/rick
exit 1
