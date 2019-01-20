:: Make Square Mobile .png icons from a base square .svg file.
:: Author: Moi, Date: 20/01/19
:: [NOTE] - Requires inkscape installation and path to executable set in the script.
::
:: Usage: UEMakeMobileIcons in_file.svg out_file_suffix.png -> (n) x_y_out_file_suffix.png

SET SRC_FILE=%1
SET DST_FILE=%2
SET INKSCAPE_PATH="C:\Program Files\Inkscape\inkscape.com"

:: Write the IOS image icons
SET IOS_SIZES=57 114 120 180 72 144 76 152 167 1024 20 40 60 29 58 87 80 50 100
for %%i in (%IOS_SIZES%) do %INKSCAPE_PATH% %SRC_FILE% --export-png=%%i_%%i_%DST_FILE% -w%%i -h%%i -bffffff

:: Write the Android Image icons
SET ANDROID_SIZES=48 36 72 96 512
for %%i in (%ANDROID_SIZES%) do %INKSCAPE_PATH% %SRC_FILE% --export-png=%%i_%%i_%DST_FILE% -w%%i -h%%i -bffffff