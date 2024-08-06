@echo off
GOTO start

:invalid
echo La syntaxe de la commande est invalide
GOTO end

:start

for /f "delims=" %%a in ('cd') do @set currentpath=%%a\
SET args=-ArgumentList '
SET exe=%1
SHIFT

:loop

IF "%1"=="" (GOTO :go)
IF NOT "%args%"=="-ArgumentList '" (SET args=%args% )
	SET a=%1
	SET args=%args%%a:'="%
SHIFT
GOTO loop

:go
SET args=%args%'

IF "%exe%"=="" (GOTO invalid)
IF "%args%"=="-ArgumentList ''" (SET args=) ELSE (SET args=%args%)

powershell start-process 'powershell' -WindowStyle hidden -ArgumentList \"cd %currentpath%; start-process '%exe%' %args% -WorkingDirectory '%currentpath%'\" -verb runas

:end