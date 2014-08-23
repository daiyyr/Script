
taskkill /f /im java.exe
set fname=%date:~0,4%%date:~5,2%%date:~8,2%
"E:\Program Files\WinRAR\WinRAR.exe" a -m5 E:\back\jc6\185WebappJc6%fname%.rar E:\tomcat\webapps\jc6
forfiles /p "e:\back\jc6" /s /m *.* /d -60 /c "cmd /c del @path" 
e:
cd E:\tomcat\bin\
start startup.bat
pause
