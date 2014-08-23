@echo off

rem Daily build script
rem M6000 project build script
rem Our software version format is like this:
rem ProductName_MajorVersion.MinorVersion.SVNVersion_DateNumber_ReleaseType

set ProductName=M6000
set MajorVersion=3
set MinorVersion=2
set ReleaseType=SHIP

set TOP=Z:
set SVNPath=https://10.24.0.220:8443/svn/juice/trunk

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
IF not exist %TOP%\%ProductName%%ReleaseType%\device\qcom\%ProductName% Goto ErrorEnd

CD %TOP%\%ProductName%%ReleaseType%\device\qcom\%ProductName%
FOR /F "tokens=2 delims= " %%i in ('findstr "#ROM_VERSION_NUMBER" ProductVersion.mk') do set ROMVersionNumber=%%i
IF "%ROMVersionNumber%"=="" Goto ErrorEnd

MD F:\DailyBuilds\%ProductName%\%ROMVersionNumber%
CD %TOP%\%ProductName%%ReleaseType%\out\target\product\%ProductName%
rem copy /Y  *.img*                %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%
rem copy /Y  *_mmc.zip             %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%
rem copy /Y  emmc_appsboot*.mbn    %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%

copy /Y  rawprogram0.xml       %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%
copy /Y  *.unsparse            %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%

CD %TOP%\%ProductName%%ReleaseType%\Images\
Xcopy /Y/S/I %ProductName% F:\DailyBuilds\%ProductName%\%ROMVersionNumber%

CD %TOP%\%ProductName%%ReleaseType%\Images\%ProductName%
copy /Y partition.bin /b + qcsblhd_cfgdata.bin /b + qcsbl.bin /b + oemsbl.bin /b + fat.amss.bin /b + emmc_appsboot.bin /b + splash.bin /b + boot.bin /b + system.bin /b + userdata.bin /b + recovery.bin /b + cache.bin /b + persist.bin /b    F:\DailyBuilds\%ProductName%\%ROMVersionNumber%\%ROMVersionNumber%.bin /b

:ErrorEnd

del /F /Q %TOP%\ProductVersion.*

