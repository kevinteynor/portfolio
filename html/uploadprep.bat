@ECHO OFF

REM Find all html files in folder structure and duplicate them,
REM but truncate the file extension to prepare for AWS S3 upload

FOR /R %%F IN ( *.html) DO (
	ECHO %%F	
	COPY /Y "%%F" "%%~pF%%~nF"
)