# CPCT Tool v2.0.1

This repo contains the files needed to run the **CPCT Tool** locally on your machine as a *Docker Image*.
[**Docker Desktop**](https://www.docker.com) is required to use this tool. 

> If your organization has *Software Policies* inplace, installing
*Docker Desktop* may require a call to your company's `Help Desk` for support. Additional information can be found [here](https://docs.docker.com/desktop/install/windows-install/). 


## What is the CPCT Tool:
The CPCT Tool is an application that supports FPKI annual reviews and compliance by analyzing public X.509 certificates for conformance to a specified FPKI profile:

- Common Policy SSP Program
- FPKI/Federal Bridge
- PIV-Interoperable (PIV-I)


## Certificate Profile changes:
  - Common SSP v2.2
  - FPKI/Federal Bridge  v2.0
  - PIV-I (merged into FBCA v2.0)
  - PIV-I 1.2 and 1.3 (legacy)

## Updates:
- Updated `start.exe` to `v2.0.1` (no code changes)
- Security update: `Django` from `3.2.23` to `3.2.24`
- Version Bump: `Django` from `3.2.24` to `3.2.25`
- Version Bump: `gunicorn` from `20.1.0` to `22.0.0`
- `Mac` and `Linux` installer: `mac-linux.sh` *(BETA)*

CPCT use can enhance detection of certificate profile issues during FPKI development and maintenance phases. In conjunction with the *Card Conformance Tool (CCT)*, the *Certificate Profile Conformance Tool (CPCT)* enables **FPKI stakeholders** to perform local testing. 

## Downloading the CPCT Tool:

After *Docker Desktop* is installed on your system and running, you can return here to download the latest release of the CPCT Tool to your computer. 

> Note: Files in the resources directory are there to be used by the *Dockerfile* while it is building the *Dockerized Image* for **Docker Desktop**.

To download the CPCT Tool, do one of the following:
1. Click on **Releases** in the right side of thei repo, under *About*, then select the `latest` release to download. 
2. Use the **Download ZIP** option of the big green *Code* button at the top of this GitHub repo.
3. Clone this repo using [Git](https://git-scm.com) with `git clone https://github.com/GSA/cpct-tool.git`

Then navigate to the location where you downloaded or cloned the files for the next step.

> **Note:** If using the `ZIP` file, make sure you `Right-Click` on the `ZIP` file, then select `Extract All...` to extract the files to your computer before clicking on the `start.exe` file.

> **NOTE:** Make sure `Docker Desktop` is running before issuing any of the below commands.


## Troubleshooting Docker Desktop:

Upon installation of Docker Desktop, Docker requires computer users to be placed in the `docker-users` group, If your account is not an admin account and you require assistance from your organization's IT Department to make changes to your computer, such as installing new software. Have your IT Department enter the following commands through **Windows Powershell** to add you to the `docker-users` group. 

Replace `<user>` with your account user name.  

```shell
net localgroup docker-users <user> /add
```
> Please make sure the above command is run within the **Windows Powershell** and not the standard *Command prompt* for it to work correctly.

Once this requirement is satisfied, **Docker Desktop** should run as expected*.


## Creating and Running the CPCT Tool Docker Image:

Inside the downloaded folder, you should see a file named `start.exe`, `Double Click` on this file to start the process. This will open a `command`(terminal) window to start the building and running process. Once prompted, type `Y` or `y` to continue, the `build` and `run` process will start.

> **MEMO:** if you get a security warning on Windows 10 or later after clicking on `start.exe`, this is normal, click the `More info` link, then the `Run anyway` button to continue. 

## or with `cmd.exe`

Open a `commpand` window and navigate to the directory where you downloaded the CPCT Tool, then type the following:  

```shell
Dockerfile  README.md  resources/  start.exe*
 > .\start.exe
```
This will start the `build` and `run` process, once prompted, type `Y` or `y` to continue, the `build` and `run` process will start. 

## Mac and Linux (BETA)

For Mac and Linux, run the `mac-linux.sh` script located in the same folder as the `start.exe`
```shell
$ ./mac-linux.sh
```
> Please make sure Docker is running before running this script and you may have to issue: `chmod +x mac-linux.sh` for it to run on the command line.

## Docker Desktop:

Once finished, your default `Web Browser` should open, displaying the `main` page of the **CPCT Tool**, if you see this, the CPCT Tool is now running locally on your computer and you can now use it to check certificates. 

- The `CPCT Main Page` opens to a local only address of: `http://127.0.0.1:8000` or `http://localhost:8000`.
- If your `default` **Web Browser** does not open, check your taskbar for already open instances of your *Web Browser*.
- **Note: The command (terminal) window will close on its own.** 

If you have used the cloud version of this tool before, the functinality should be the same, the only difference is now your have the *CPCT Tool* running locally on your computer.

## Running the CPCT Tool:

Once you have the **CPCT Tool** *Docker Image* installed and running, you **DO NOT** have to `rerun` the `start.exe` file. This is only needed to initially `build` and `run` the *Docker Image*.

> **Note:** If you do happen to `run` the `start.exe` file again, this is not a problem. It will run the same as it did before, but will not build another `Docker Image` file. Since nothing has changed in the `Docker Image`, it will start another `instance` of the same *Docker Image* and complain about your local port `8000` is alreay in use, a new instance of the Image will display inside of *Docker Desktop* running but with no ports specified, but with a different `Tag ID` number. If you wish, you can safely remove this extra instances and continue using the CPCT Tool as before.  

**How do I access the tool the next time I need to use it?**

You have a few options:
1. Keep the `Docker Image` running, so the __next time__ you need to use the *CPCT Tool*, open the following address in your web browser: `http://127.0.0.1:8000` or `http://localhost:8000` to access the CPCT Tools main page.
2. If you do not use the tool that often, then you can click the `stop` button beside the *Docker Desktop Image* for the *CPCT Tool*, this will stop the Docker Image. You can restart it again by clicking the `start` button to start the **Docker Image** again. Remember to open your web browser to:`http://127.0.0.1:8000` or `http://localhost:8000` to use the tool again. Feel free to bookmark this page for simpler access in the future. 
3. If you have limited space on your computer or need to conserve space, simply delete the **Docker Image** for the *CPCT Tool* inside of **Docker Desktop**. When you want to `run` the **Docker Image** for the *CPCT Tool* again, simply `rerun` the `start.exe` again.

> **Memo:** If you have `deleted` the `zip file` and/or the `cpct-tool` folder for the `CPCT Tool`, you can download it again here under `Releases` and `rerun` the `start.exe` file like you did before.

**It is OK, if you find that you have multiple or many instances of the *CPCT Tool* running or hosted inside of Docker Desktop. Feel free to `stop` and `delete` them if needed. You can `download` the `zip` file again and rerun the `start.exe` again to `recreate` and `run` the *Docker Image* anytime.*  


<br><br>
-- **CPCT Tool**
