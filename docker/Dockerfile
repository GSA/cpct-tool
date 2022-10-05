
# Dockerfile v1.0 - CPCT Tool (Certificate Profile Conformance) Tool
# Date: 10/04/2022
# Docker Image: fd4adbe904d7acc54de4c98dcfc693949a76489fde7a7483afcaa0145f333297

# Python Docker Image
    # Docker Hub: https://hub.docker.com/_/python
    # Tag: 3.9
FROM python:3.9

# Docker Working Directory 
    # The RUN, CMD commands run from this context 
WORKDIR /opt/cpct/

# Copy Files to Docker Image working directory 
    # Copy from GitHub Flat file layout to Django App expected CPCT Tiered Layout
    # (*) -> (cpct/*)
COPY cpct /opt/cpct/cpct
COPY fpkilint /opt/cpct/fpkilint
COPY profiles   /opt/cpct/profiles
COPY staticfiles /opt/cpct/staticfiles
COPY db.sqlite3 /opt/cpct/db.sqlite3
COPY manage.py /opt/cpct/manage.py
COPY manifest.yml /opt/cpct/manifest.yml
COPY Procfile /opt/cpct/Procfile
COPY requirements.txt /opt/cpct/requirements.txt
# Runtime 3.9.9 ->
COPy runtime.txt /opt/cpct/runtime.txt

# pip install required python packages
    # Django==3.2.15
    # pytz==2020.1
    # whitenoise==5.2.0
    # gunicorn==20.1.0
    # asn1crypto==1.4.0
RUN python -m pip install -r /opt/cpct/requirements.txt

# Default port for Django Development Server
EXPOSE 8000

# Default address for Django App: 127.0.0.1:8000
    # See: cpct/cpct/settings.py allowed hosts
CMD python /opt/cpct/manage.py runserver 0.0.0.0:8000