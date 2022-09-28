echo off

%~d0
cd %~dp0

set LogFile=LogFile
set extension=.txt
REM Début du programme
ECHO %date% %time% Debut du traitement

REM Initialisation variables
SET datejour=%date:~6,4%%date:~3,2%%date:~0,2%

echo log file starts
echo something is done in the application
echo %date% %time% >> %LogFile%%extension%
echo log file ends
echo rename the log file
echo %date%
set currentMonth=%date:~3,2%
echo le mois en cours est %currentMonth%
set currentDay=%date:~0,2%
echo aujourdhui nous sommes le %currentDay%
set currentYear=%date:~6,4%
echo l annee en cours est %currentYear%

set newFileName=%logfile%-%currentYear%-%currentMonth%-%currentDay%%extension%

ren %LogFile%%extension% %newFileName%
echo le fichier a ete renomme
