@echo off
title Convertir un fichier .jp2 codé sur 16 bits avec un code couleur sur 0 à 255 en 8 bits et en .tif
cls
@REM On réalise une boucle sur notre Dossier cible afin de sélectionner l'ensemble des fichiers .jp2 :

for %%N in (C:\DOSSIER_RASTER\*.jp2) do gdal_translate -of GTiff -ot Byte -co "BIGTIFF=YES" -co "COMPRESS=JPEG" -co "JPEG_QUALITY=75" -co "PHOTOMETRIC=RGB" -co "TILED=YES" %%N C:\DOSSIER_RASTER\%%~nN.tif

@REM "%%N" représente le n-ième argument passé lors de l'appel du script

