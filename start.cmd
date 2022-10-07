@echo off
@REM Set a random number to serve as a multiple instance number.
@REM users can run this command multiple times. 
set instance=%RANDOM%

sleep 2
@REM Build the docker image only, the image is started in the next step 
set message1="Status:> Starting Build of the Docker Desktop CPCT Tool Image"
echo %message1%
docker build -t desktop-cpct:%instance% .

sleep 3
@REM Run the Docker Image on computer's private port 127.0.0.1:8000
@REM exposing port 8000 to the computer/web browser.  
set message2="Status:> Starting the Docker Image: desktop-cpct:"%instance% 
echo %message2%
docker run -d -p 127.0.0.1:8000:8000 desktop-cpct:%instance%

sleep 10
@REM Start the default Web Browser
set message3="Status:> Opening CPCT in your default Web Browser
echo %message3%
start http://127.0.0.1:8000


@REM TODO: Test if Docker is installed, if not prompt user. 
@REM TODO: Lite check If port is already in use