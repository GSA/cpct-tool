# Docker Desktop CPCT Tool

This repo contains the files needed to run the **CPCT Tool** locally on your machine as a *Docker Image*.
[**Docker Desktop**](https://www.docker.com) is required to use this tool. If your organization has *Software Policies* inplace, installing
*Docker Desktop* may require a call to your company's `Help Desk` for support. After you install *Docker Desktop* is installed on your system and running, you can return here to download or clone this repo to your computer, and run the `start.cmd` batch file that is located in the main directory along side the `Dockerfile`. Files in the resources directory are there to be used by the *Dockerfile* when it is building the *Dockerized Image* for **Docker Desktop**.

## Running the Dockerized CPCT Tool Image

To install and run the *Dockerized* **CPCT Tool**, download or clone this repo, then navigate to the location where you placed the files, then **Double Click** on the `start.cmd` file. 
> Make sure `Docker Desktop` is running before issuing any of the below commands. 


### Using the downloaded or cloned file:

The files you download or clone should look like this. `Double Click` on the `start.cmd` file to start the process of building and running the *Docker Image*.
<br/><br/>
![](docs/images/local_files.png)

## or

Open a `commpand` window with `cmd.exe` and run the following command in the directory of the *Dockerfile* and *start.cmd*.  
```shell
Dockerfile  README.md  resources  start.cmd
 > start.cmd
```

## Docker Desktop:

This should `Build`, `Start` the *Docker Image*, once finised, your default `Web Browser` should open, displaying the `main` page of the **Docker Desktop CPCT Tool**, and navigate to the local only address of: **127.0.0.1:8000**. You can now use the *CPCT Tool* to check certificates. 

> The command window will close on its own. 

## Running the CPCT Tool

Once you have the **CPCT Tool** *Docker Image* installed and running, you **DO NOT** have to `rerun` the `start.cmd` file. This is only needed to initially `Build` and `Start` the *Docker Desktop CPCT Tool*. 

> **Note:** If you do `rerun` the `start.cmd` file again, this is not a problem. It will run the same as it did before, but will not build another `Docker Image` file. Since nothing has changed in the `Docker Image`, it will start another `instance` of the same file it download before, with the same `Image ID`, but with a different `Tag ID` number. 

**This is OK, if you feel you have too many instances running or hosted inside of Docker Desktop, feel free to stop and delete them. You can rerun the `start.cmd` to recreate and run a new image at anytime.*  

-- **Docker Desktop CPCT Tool**