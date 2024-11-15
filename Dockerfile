FROM python:3.8.0
WORKDIR /usr/src/app
COPY analytics/requirements.txt /usr/src/app/
RUN apt update -y
# Install a couple of packages to successfully install postgresql server locally
RUN apt install build-essential libpq-dev -y
# Update python modules to successfully build the required modules
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt
