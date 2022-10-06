# CPCP Tool Docker Image

This directory contains the Dockerfile and associated project files needed to create a **Docker** version of the `CPCT Tool` you can run locally on your computer using [**Docker Desktop**](https://www.docker.com). The `CPCT Tool` will have the 

Read below for more information on how to install and run the `Docker Image` locally on your computer.    

## File Layout

The layout of the files in this directory differ from the layout of the original `CPCT Tool`. The original layout of the files had this entire directory tree nested in side of a `cpt` directory. This layout differs only in not being nested inside of a `cpct` directory and exists only here in a **Flat File Layout** for the purposes of source code management and readability. When the *Dockerfile* contained in this directory is ran, it recreates the original **Nested Layout** copying all of the source files in this directory based on the [Linux File Hierarchy Standard](https://refspecs.linuxfoundation.org/fhs.shtml) use of the `/opt` directory, which is a location reserved for *Add-on Application Software* on Linux operating systems. 

## Dockerfile to Docker Image

The [Dockerfile](https://docs.docker.com/engine/reference/builder/) located in this directory can be ran with the `docker` command. This `docker` command once ran, will create a `Docker Image` for use with [Docker Desktop](https://docs.docker.com/get-docker/), which is available for `Mac`, `Windows`, and `Linux`. To run the generated *Docker Image*, after you have the **Docker Desktop** software installed on your system, ensure that it is running, then open a command line window (`cmd.exe` for *Windows*, a `terminal` window for *Mac* and *Linux*) and run the following command from within the directory that contains the *Dockerfile*.

```bash
docker build -t cpct:latest .
```
> **Note:** You can run the above command without the `-t cpct:latest` but if you have a lot of other images, providing a tag will help you keep track of it. 

## Docker Desktop

After the above command has ran, a `Docker Image` is created in the location specific to your `Operating System` and **Docker Desktop** installation. This only creates the **Docker Image**, to run this image, open the *Docker Desktop* window, there you should see the *Docker Image* that was create. The CPCT Tool's *Docker Image* is taged with the name: `cpct:latest`. There also you should see other information related to your newly created image, such as `STATUS`, `PORT`, `STARTED`, and `NAME` which is different each time you retun this *Dockerfile* to create another *Docker Image*. 

To start this image you have to use the `docker run` command, to do so you have two options:

**First Option:**
- Run the following command from the `terminal` or `cmd.exe` command window. 

```bash
docker run -d -p 8000:8000 cpct:latest
```
This `docker run` command will start the image in the *Docker Desktop* application for you. You should see in the *Docker Desktop* window that the `status` and `port` of the application has changed. 

**Second Option**

- Click the start button for the *Docker Image* inside of the **Docker Desktop** window, this will bring up a window for you to enter additional information. In the `PORT` text field, enter `8000`, then click the **Start** button. This should start your newly created *Docker Image*, you should see that the `status` and `port` information indicating that it is running. If not, stop the *Docker Image* and try running the *First Option* listed above to see if it resolved your issue. 

## Accessing the CPCT Tool 

After you get your *Docker Image* up and running, you can should be able to access the **CPCT Tool** by opening a *Web Browser* and navigating to one of the following addresses: 

- 127.0.0.1:8000 *(default)*
- http://localhost:8000  *(should work as well)*

Either of these addresses should work for you and the *CPCT Tool's* main page should now display in the *browser* window. If you have used the tool before, to test a certificate, use the to as you did before. If you are new to the tool, then see the [How to use CPCT](#) file.  