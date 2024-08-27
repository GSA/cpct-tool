
# Dockerfile v1.0 - CPCT Tool (Certificate Profile Conformance) Tool

# Python Docker Image
    # Docker Hub: https://hub.docker.com/_/python
    # Tag: 3.9
FROM python:3.9

# Production Branch of fpkilint: 
# Get clone of repo from standard fpkilint repo, put into gsa folder
# Memo: remember to comment out the line below before doing any Development Branch Testing
RUN git clone https://github.com/GSA/fpkilint.git /opt/gsa

# Development Branch Testing: (remember to comment out the RUN line above before using the one below)
# For testing a Development Branch, uncomment the line below, and update the <branchname> 
# RUN git clone -b <branchname> --single-branch https://github.com/GSA/fpkilint.git /opt/gsa

# Remove files to replace with modified files
RUN rm /opt/gsa/cpct/cpct/settings.py
RUN chmod +x /opt/gsa/cpct/fpkilint/der2ascii

# Copy the modified files to their location
COPY resources/settings.py /opt/gsa/cpct/cpct/settings.py

# Resource requirements.txt (default)
COPY resources/requirements.txt /opt/gsa/cpct/requirements.txt

# Docker Working Directory 
# The RUN, CMD commands run from this context 
WORKDIR /opt/gsa/cpct/

# As of v2.0.1 resources/requirements.txt is used by default
 # pip installs the required python packages from the requirements.txt since it is 
 # visible to dependatbot and is updated often when updates or security bumps are issued.
 # To customize the packages installed, update requirements.txt before running the installer.

RUN python -m pip install -r requirements.txt

# Default port for Django Development Server
EXPOSE 8000

# Default address for Django App: 127.0.0.1:8000
    # serving both 127.0.0.1 and localhost on port 8000
CMD python manage.py runserver 0.0.0.0:8000
