@echo off

Title Fxden Build
color a
chcp 65001 >nul 2>&1
cls

:: Create a key file in C:\Windows\Fonts
echo Key file created by Fxden > C:\Windows\Fonts\keyfile.txt

:: Define valid keys
set valid_keys=Fxden-build-AQyu54 Fxden-build-ErtH65  Fxden-build-Qkl089IK Fxden-build-MNhyT5 Fxden-build-QyjM67 Fxden-build-MkahT68A Fxden-build-!jAjj44Asm Fxden-build-?12Ajbj1 Fxden-build-UiklOi13A

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
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('Fxden Build', 'Thank You For Purchasing!', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);}"
echo.
echo.
echo.                                        ██╗    ██╗ █████╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗ 
echo.                                        ██║    ██║██╔══██╗██╔══██╗████╗  ██║██║████╗  ██║██╔════╝ 
echo.                                        ██║ █╗ ██║███████║██████╔╝██╔██╗ ██║██║██╔██╗ ██║██║  ███╗
echo.                                        ██║███╗██║██╔══██║██╔══██╗██║╚██╗██║██║██║╚██╗██║██║   ██║
echo.                                        ╚███╔███╔╝██║  ██║██║  ██║██║ ╚████║██║██║ ╚████║╚██████╔╝
echo.                                         ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
echo.                                            
echo.                          DO NOT GIVE OUT THIS PRODUCT, IT IS NOW HWID LOCKED AND IF THIS IS OPENED ON ANOTHER 
echo.                         PC I HAVE THE RIGHT TO PULL YOUR ACCESS TO MY PRODUCT WITH NO REFUND.
echo  
pause
goto :success    
 
:success
        
cls
echo.
echo.
echo		██     ██ ███████ ██       ██████  ██████  ███    ███ ███████ 
echo		██     ██ ██      ██      ██      ██    ██ ████  ████ ██      
echo		██  █  ██ █████   ██      ██      ██    ██ ██ ████ ██ █████   
echo		██ ███ ██ ██      ██      ██      ██    ██ ██  ██  ██ ██      
echo		 ███ ███  ███████ ███████  ██████  ██████  ██      ██ ███████ 
pause
cls
echo Success! You have logged in! %name%
pause
cls
echo Executing Build pack. Please wait. 
echo.
echo Executing... 
TIMEOUT /T 5 /NOBREAK
echo.
echo Press Enter To Activate Build pack.
pause >nul
echo. 
@echo off
echo All credits belong to Fxden
echo Failure to comply with TOS will result in a HWID Ban.
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "18" /f
echo Tweak done!
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "18" /f
echo Tweak done!
timeout 2 >nul
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "38" /f
echo Tweak done!
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
echo Tweak done!
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
echo Tweak done!
timeout 2 >nul
Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
echo Tweak done!
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d 4 /f
echo Tweak done!
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d 5 /f
echo Tweak done!
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d 6 /f
echo Tweak done!
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d 7 /f
echo Tweak done!

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f
timeout 2 >nul
echo Fxden has been activated! Please run your game now.
echo Enjoy!
pause