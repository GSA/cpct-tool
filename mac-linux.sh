# Mac CPCT Tool Installer for Docker Desktop
echo " "
echo "This will install the CPCT Tool v2.0.1 for Docker Desktop"
echo "Please make sure you have Docker Desktop installed and/or running"
echo " "
sleep 20
# Start building the Docker Image 
echo "Building Docker image for the CPCT Tool v2.0.1 ..."
sudo docker build -t cpct-tool-v2:latest .
echo " "
sleep 10
# Share the name of the Docker Image to look for in Docker Desktop
echo "The image name in Docker Desktop for the CPCT Tool is: cpct-tool-v2:latest"
echo " "
echo "Installing the CPCT Tool Docker image..."
echo " "
sleep 10
echo "Please wait... starting the CPCT Tool 2.0.1"
sudo docker run -d -p 127.0.0.1:8000:8000 -t cpct-tool-v2:latest
echo " "
echo "Installation of the CPCT Tool v2.0.1 is complete."
echo " "
sleep 10
echo "Please visit: http://127.0.0.1:8000" in your browser to use the tool.
echo " "
echo "Thank you for using the Dockerized Desktop version of the CPCT Tool"
echo " "
