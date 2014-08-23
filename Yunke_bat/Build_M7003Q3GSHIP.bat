@echo off

rem Daily build script
rem M7003Q3G project build script
rem Our software version format is like this:
rem ProductName_MajorVersion.MinorVersion.SVNVersion_DateNumber_ReleaseType

set ProductName=M7003Q3G
set MajorVersion=1
set MinorVersion=0
set ReleaseType=SHIP

set TOP=Z:
set SVNPath=https://10.24.0.220:8443/svn/coffee/trunk

rem Mapping net work driver
if not exist %TOP% net use %TOP% \\ubuntu64\sourcecode
if not exist %TOP% goto ErrorEnd

rem %1: ProductName; %2: MajorVersion; %3: MinorVersion; %4: SVNPath; %5: ReleaseType
Call GenVersion.bat %ProductName% %MajorVersion% %MinorVersion% %SVNPath% %ReleaseType%

@echo export SVNPath=%SVNPath%>>ProductVersion.sh

rem Copy ProductVersion.mk to %TOP%
copy /Y ProductVersion.* %TOP%
del /F /Q ProductVersion.*

rem Log on Ubuntu system to start getting code
ssh2 -l root -p 22 ubuntu64

rem Start to build AMSS
Call BuildModem.bat %TOP% D: %ProductName% %ReleaseType%

rem Copy ProductVersion.mp to %TOP%
copy /Y ProductVersion.* %TOP%
del /F /Q ProductVersion.*

rem Log on Ubuntu system to start building
ssh2 -l root -p 22 ubuntu64

%TOP%

rem Now, the final images should be %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%
IF not exist %TOP%\%ProductName%%ReleaseType%\device\cct\%ProductName% Goto ErrorEnd

CD %TOP%\%ProductName%%ReleaseType%\device\cct\%ProductName%
FOR /F "tokens=2 delims= " %%i in ('findstr "#ROM_VERSION_NUMBER" ProductVersion.mk') do set ROMVersionNumber=%%i
IF "%ROMVersionNumber%"=="" Goto ErrorEnd

MD F:\DailyBuilds\%ProductName%\%ROMVersionNumber%
CD %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%
copy *.* F:\DailyBuilds\%ProductName%\%ROMVersionNumber%
copy partition.bin /b + qcsblhd_cfgdata.bin /b + qcsbl.bin /b + oemsbl.bin /b + amss.bin /b + appsboot.bin /b + splash.bin /b + boot.2knand.bin /b + system.2knand.bin /b + userdata.2knand.bin /b + persist.2knand.bin /b + recovery.2knand.bin  /b     F:\DailyBuilds\%ProductName%\%ROMVersionNumber%\%ROMVersionNumber%.bin /b

:ErrorEnd

del /F /Q %TOP%\ProductVersion.*

