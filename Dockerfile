
# Dockerfile v1.0 - CPCT Tool (Certificate Profile Conformance) Tool

# Python Docker Image
    # Docker Hub: https://hub.docker.com/_/python
    # Tag: 3.9
FROM python:3.9


# Get clone of repo from standard fpkilint repo, put into gsa folder
RUN git clone https://github.com/GSA/fpkilint.git /opt/gsa


# Remove files to replace with modified files
RUN rm /opt/gsa/cpct/cpct/settings.py
RUN chmod +x /opt/gsa/cpct/fpkilint/der2ascii

# Copy the modified files to their location
COPY resources/settings.py /opt/gsa/cpct/cpct/settings.py

# Uncomment to remove the existing requirements.txt to replace it with your own
 # Note: Don't forget to uncomment the COPY function below for this file: see: resources/requirements.txt
# RUN rm /opt/gsa/cpct/requirements.txt
 # Uncomment to copy your own requirements.txt into the Docker Image
# COPY resources/requirements.txt /opt/gsa/cpct/requirements.txt

# Docker Working Directory 
# The RUN, CMD commands run from this context 
WORKDIR /opt/gsa/cpct/


# pip install required python packages
    # Django==3.2.16
    # pytz==2020.1
    # whitenoise==5.2.0
    # gunicorn==20.1.0
    # asn1crypto==1.4.0
RUN python -m pip install -r requirements.txt

# Default port for Django Development Server
EXPOSE 8000

# Default address for Django App: 127.0.0.1:8000
    # serving both 127.0.0.1 and localhost on port 8000
CMD python manage.py runserver 0.0.0.0:8000