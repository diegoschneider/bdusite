@echo off
title Backup mysql

:inicio
echo 1- Backup datos estandar
echo 2- Backup datos no estandar
echo 3- Backup total
echo 4- Backup estructura
echo.
echo Datos estandar: Barrios, estadodocumento, turno, etc.
echo Datos no estandar: Alumnos, materias, cursos, personal, etc.
echo Backup total: copia todo el contenido, estandar y no estandar
echo.
echo Todos los backups copian la estructura de las tablas que copian
echo.

:iniciosel
set /p "option=Seleccione una opcion: "

if %option%==1 goto best
if %option%==2 goto bnoest
if %option%==3 goto btotal
if %option%==4 goto bstruc
goto iniciosel

:best
mysqldump -u root -p bdu --tables barrios calles condactividad condinscripcion dia escuelas especialidades estadodocumento gremio localidades nivelescolar nivelinstruccion paises provincia sexo tipodocumento tipoescuela turnos > dump_est.sql
echo Hecho.
echo.
pause
exit /b

:bnoest
mysqldump -u root -p bdu --tables alumnos cargo cargos catedras cursos familiares fichasalud  instrecurrir logins materias medicos personal titulo titulos users vinculos > dump_noest.sql
echo Hecho.
echo.
pause
exit /b

:btotal
mysqldump -u root -p bdu > dump_tot.sql
echo Hecho.
echo.
pause
exit /b

:bstruc
mysqldump --no-data -u root -p bdu > dump_struc.sql
echo Hecho.
echo.
pause
exit /b