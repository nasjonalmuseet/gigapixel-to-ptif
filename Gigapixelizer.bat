@echo off
:: Check if an argument (file path) is provided
if "%~1"=="" (
    echo Please drag and drop a file onto this script or provide a file path.
    pause
    exit /b
)

:: Set the input file and output file
set "input_file=%~1"
set "output_file=%~n1.tif"
set "output_folder=c:\GP\"

:: Print intro message
echo --------------------------------------------------------------------------
echo  Greetings, Ye Fellow Cyberspace Traveller!
echo --------------------------------------------------------------------------
echo  Gigapixel processing started at %date% %time%.
echo  Reading input file to memory: "%input_file%"
echo  This might take a few minutes. Please wait. Grab a coffee.
echo  (Before tile generation will start, which might take absolute ages.)
echo --------------------------------------------------------------------------

:: Run vips
set VIPS_WARNING=1
vips tiffsave "%input_file%" "%output_folder%%output_file%" --tile --pyramid --compression jpeg --Q 80 --tile-width 512 --tile-height 512 --bigtiff --vips-progress

:: Check if the output file exists to determine success
if exist "%output_folder%%output_file%" (
    echo Processed successfully! Output: "%output_file%"
) else (
    echo Failed to process the file.
)

:: End of processing
echo Processing finished at %date% %time%
pause
