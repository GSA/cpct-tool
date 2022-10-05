# CPCT Tool Change Log

- Updated version number in `requirements.txt` file to align with a `PR(Pull Request) #55` Security upgrade django from *3.2.15* to **3.2.16** to fix Denial of Service (DoS) attacks. 
- Created Dockerfile using [Python 3.9`Docker Image`](https://hub.docker.com/_/python)  which is taged: *3.9*.
    - Set working directory in `Docker Image` to `opt/cpct` 
    - Memo: Running `django` commands from the `working directory context`
    - Still running CMD and RUN commands pointing to `/opt/cpct/manage.py` and `/opt/cpct/requirements.txt`.
- Changed layout to a Flat Layout so files are easier to locate and read.
- `Dockerfile`: set up `COPY` commands to place files inside of a `cpct` directory at the following file system location: `/opt/cpct` **Note:** this also includes the `cpct` directory which will make it `/opt/cpct/cpct`
 (which I believe is a django app requirement).
- `cpct/settings.py`: changed the `ALLOWED_HOSTS ` to `['127.0.0.1','localhost']`.
-  `cpct/settings.py`: changed the `DEBUG` to `True` for Mac, Linux and Windows.
-  `cpct/settings.py`: set `SESSION_COOKIE_SECURE` to `False`, 
    `CSRF_COOKIE_SECURE` to `False`, and `CSRF_COOKIE_HTTPONLY` to `True`
- `cpct/settings.py`: commented out `SECURE_HSTS_INCLUDE_SUBDOMAINS`, `SECURE_HSTS_SECONDS`, and `SECURE_HSTS_PRELOAD` per Robert, since this tool will run locally on the user's computer.
- Uploaded files to private repo to work with easier. 
