@echo off

Title Fxden Bloom Full
color a
chcp 65001 >nul 2>&1
cls

echo Key file created by Fxden > C:\Windows\Fonts\keyfile.txt


set valid_keys= Fxden-bloomlite-YUK12 Fxden-bloomlite-UhY57 Fxden-bloomlite-56H Fxden-bloomlite-YuIk56G Fxden-bloomlite-65Tv Fxden-bloomlite-71TfG Fxden-bloomlite-Op87K

:prompt_key
:: Prompt for key
set /p "entered_key=Enter your key: "

:: Trim leading/trailing whitespace from input
for /f "tokens=* delims= " %%a in ("%entered_key%") do set entered_key=%%a

:: Check if input is empty or invalid (spacebar)
if "%entered_key%"=="" (
    echo Invalid key! Try again.
    goto :prompt_key
)

:: Check if entered key is in the valid keys list
echo %valid_keys% | findstr /i "\<%entered_key%\>" >nul
if %errorlevel%==0 (
    echo Key accepted! Proceeding...
    timeout /t 2 >nul
    goto :main
) else (
    echo Incorrect key! Exiting...
    timeout /t 2 >nul
    exit /b
)


:main
cls
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Bloom Lite', 'Thank You For Purchasing!', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
echo
echo.                                        ██╗    ██╗ █████╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗ 
echo.                                        ██║    ██║██╔══██╗██╔══██╗████╗  ██║██║████╗  ██║██╔════╝ 
echo.                                        ██║ █╗ ██║███████║██████╔╝██╔██╗ ██║██║██╔██╗ ██║██║  ███╗
echo.                                        ██║███╗██║██╔══██║██╔══██╗██║╚██╗██║██║██║╚██╗██║██║   ██║
echo.                                        ╚███╔███╔╝██║  ██║██║  ██║██║ ╚████║██║██║ ╚████║╚██████╔╝
echo.                                         ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
echo.                                            
echo.                          DO NOT GIVE OUT THIS PRODUCT, IT IS NOW HWID LOCKED AND IF THIS IS OPENED ON ANOTHER 
echo.                         PC I HAVE THE RIGHT TO PULL YOUR ACCESS TO MY PRODUCT WITH NO REFUND.
echo.
echo.
echo.   
pause
goto :success                                                                                                                                                                                                                               cls

:success
cls
echo.
echo Success! You have logged in! %name%
pause
cls
echo Executing Bloom lite. Please wait. 
echo.
echo Executing... 
TIMEOUT /T 5 /NOBREAK
echo.
echo Press Enter To Activate bloom lite.
pause >nul
echo. 
@echo off
echo All credits belong to Fxden
echo Failure to comply with TOS will result in a HWID Ban.
@echo off
echo Applying Bloom lite...


R Killing SystemSettings process
taskkill /F /FI "IMAGENAME eq SystemSettings.exe"
echo action complete
timeout 2 >nul
net stop wuauserv
net stop UsoSvc
echo action complete

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DoNotConnectToWindowsUpdateInternetLocations" /t REG_DWORD /d 1 /f
echo action complete
timeout 2 >nul

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "SetDisableUXWUAccess" /t REG_DWORD /d 1 /f
echo action complete

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d 1 /f
echo action complete

timeout 3 >nul
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "ExcludeWUDriversInQualityUpdate" /t REG_DWORD /d 1 /f
echo action complete

gpupdate /force
echo action complete

rd /s /q "C:\Windows\SoftwareDistribution"
md "C:\Windows\SoftwareDistribution"
echo action complete

timeout 1 >nul
net start wuauserv
net start UsoSvc
echo action complete
echo Bloom Lite applied successfully! Have fun!!!
pause

