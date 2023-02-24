##################################
# Stage 1: Build the image docker  
##################################
FROM python:3.10-slim-buster AS build
WORKDIR /backend-flask
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
####################################
# Stage 2: Run the docker cotainer
####################################
FROM python:3.10-slim-buster AS production
WORKDIR /backend-flask
COPY --from=build /backend-flask /backend-flask

RUN apt-get update 
RUN apt-get install -y gcc
RUN apt-get install -y curl


ENV FLASK_ENV=production
EXPOSE ${PORT}
COPY my_script.sh /usr/local/bin/my_script.sh
RUN chmod +x /usr/local/bin/my_script.sh
CMD ["my_script.sh"]