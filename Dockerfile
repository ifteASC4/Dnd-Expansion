#latest python image verison that is lightweight
FROM python:3.10-alpine 

#recommended to use for python on docker
ENV PYTHONUNBUFFERED 1

#copys the reqs and installs its
COPY ./requirements.txt /requirements.txt 
RUN pip install -r /requirements.txt

#stores our app source code
#creates empty folder and swtiches it to default dir
#copys code from our local machine to the docker image
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user

