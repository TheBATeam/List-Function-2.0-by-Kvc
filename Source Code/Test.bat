@echo off
cls
Title List 2.0 - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"

:Top
cls
Echo.
Echo. Click Anywhere to Load List...

REM Enabling Mouse Interaction with Cmd... Using 'Batbox'
For /F "Delims=: Tokens=1,2,3" %%A in ('Batbox.exe /m') Do (
	set Button=%%C
	set X=%%A
	set Y=%%B
	)

call List %X% %Y% f0 New Open Save "SAve As" Exit

title option %errorlevel% is selected.
Goto TOp