@echo off
@REM Set a random number to serve as a multiple instance number.
@REM users can run this command multiple times. 
set instance=%RANDOM%

sleep 2
@REM Build the docker image only, the image is started in the next step 
set message1=Status: Starting build of the Docker Desktop CPCT Tool Image
echo %message1%
echo;
docker build -t desktop-cpct:%instance% .
echo;
set message1=Status: Docker Image created... 
echo %message1%
echo;

sleep 10
@REM Run the Docker Image on computer's private port 127.0.0.1:8000
@REM exposing port 8000 to the computer/web browser.  
set message2=Status: Starting the Docker Image Tagged as: desktop-cpct:%instance% 
echo %message2%
echo;

set message2=Status: Your Docker Image ID is:  
echo %message2%
docker run -d -p 127.0.0.1:8000:8000 desktop-cpct:%instance%
echo;
set message2=Status: Your Docker Image is running...
echo %message2% 
echo;

sleep 5
@REM Start the default Web Browser
set message3=Status: Opening your default Web Browser to: http://127.0.0.1:8000
echo %message3%
echo;
set message3=Status: Thank you for using the Dockerized Desktop version of the CPCT Tool.
echo %message3%
set message3=              (This window will automatically closed)
echo %message3%
sleep 15

start http://127.0.0.1:8000


@REM TODO: Test if Docker is installed, if not prompt user. 
@REM TODO: Lite check If port is already in use