# Week 1 — App Containerization.
 
 
 #### Personal summary 


* Classroom:

    - Run the app (front-end and back-end) locally.
    - Run each application with Docker.
    - Build and run docker image using Dockerfile.
    - Run both with Docker Compose.
    - Write Flask notification using OpenAPI.
    - Add a new React page.

* Security videos : 

   - Why i should care about docker sucrity.
   - Manged container service ECS.
   - Unmaged containers cost a lot of time to update.  
   - Learn about the best practise for containirasion 
     - Use Synk open source to sacan and get suggestion (SRC) (https://app.snyk.io/org/mossaaba/project/6d809264-2847-4b38-9daf-4092a461c0fc)
     - Should have a secrete manager 
     - How to use aws seceret manager 
     - AWS Inspector/Clair to scane imgage docker / container / instance / lammbda 
     - Scan images with Synk localy 


### Homework : 





1. Ensure that we can get the apps running locally
```sh
cd backend-flask
export FRONTEND_URL="*"
export BACKEND_URL="*"
python3 -m flask run --host=0.0.0.0 --port=4567
```
> Response back : 
 ![Capture d’écran 2023-02-23 à 10 37 11](https://user-images.githubusercontent.com/11331502/220870400-adb05d2b-3b52-441b-aa54-44ab3159e100.png)


2. Create and build docker image based on Dockerfile

* Commands 
```sh
# building the image 
docker build -t backend-flask ./backend-flask

# Run the container 
docker run --rm -p 4567:4567 -it -e FRONTEND_URL='*' -e BACKEND_URL='*' backend-flask

# Returning the container id into an Env Var
CONTAINER_ID=$(docker run --rm -p 4567:4567 -d backend-flask)
env | grep CONTAINER

# Get Container Images or Running Container 
docker ps
docker images

# Checked Container Logs 

docker logs CONTAINER_ID -f
docker logs backend-flask -f
docker logs $CONTAINER_ID -f

# Attaching shell to a Container, we can do that with docker extension vscode
docker exec CONTAINER_ID -it /bin/bash

```
> <em>backend-flask</em> : 
![Capture d’écran 2023-02-23 à 11 43 36](https://user-images.githubusercontent.com/11331502/220884845-fc991f24-dbc2-4f9f-8bb1-8ad94e71d422.png)

> frontend : 
<img width="1680" alt="Capture d’écran 2023-02-23 à 13 25 08" src="https://user-images.githubusercontent.com/11331502/220905139-eddc70cf-63cb-447d-886e-aee2eb3e9bc1.png">

3. Ensure we get the apps running via individual container


>> backend-flask : Run the container 
<img width="1680" alt="Capture d’écran 2023-02-23 à 12 15 06" src="https://user-images.githubusercontent.com/11331502/220891088-3b7fa918-3d61-442b-8b0d-257713afe771.png">

>> frontend-flask : run the container 

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 26 19" src="https://user-images.githubusercontent.com/11331502/220905351-abb825d1-3e47-42da-ae8f-f37ff34914a1.png">

4. Create and Run docker compose 

```sh
# Use can use VsCode and right clique on the docker-compose.yml
docker compose up
docker-compose up

```

>> APPs runing  

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 31 58" src="https://user-images.githubusercontent.com/11331502/220906579-a4847bbf-75da-43d2-856d-0763a41e41fc.png">


5 . Ensure we can orchestrate multiple containers to run side by side


<img width="1680" alt="Capture d’écran 2023-02-23 à 13 37 07" src="https://user-images.githubusercontent.com/11331502/220907855-8cb2cf53-86a2-4de5-af7e-a225aada9458.png">


6 . Mount directories so we can make changes while we code

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 34 55" src="https://user-images.githubusercontent.com/11331502/220907362-14198fe6-8430-4a48-94e3-ce64bc9f25bf.png">

<img width="1012" alt="image" src="https://user-images.githubusercontent.com/11331502/220907596-edf843b9-e104-4bc4-9c71-19b154390396.png">

<img width="1680" alt="image" src="https://user-images.githubusercontent.com/11331502/220906902-15faeb82-3b55-44a2-a334-8994bdb836bc.png">


7. Updating the backend and frontend code to add notifications : 

<img width="1680" alt="Capture d’écran 2023-02-23 à 19 33 57" src="https://user-images.githubusercontent.com/11331502/220999098-ef09b8f4-255e-43b1-bace-168596d3d58f.png">


8. Adding DynamoDB and Connecting postgreSQL
```sh
 dynamodb-local:
    # https://stackoverflow.com/questions/67533058/persist-local-dynamodb-data-in-volumes-lack-permission-unable-to-open-databa
    # We needed to add user:root to get this working.
    user: root
    command: "-jar DynamoDBLocal.jar -sharedDb -dbPath ./data"
    image: "amazon/dynamodb-local:latest"
    container_name: dynamodb-local
    ports:
      - "8000:8000"
    volumes:
      - "./docker/dynamodb:/home/dynamodblocal/data"
    working_dir: /home/dynamodblocal
  db:
    image: postgres:13-alpine
    restart: always
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=password
    ports:
      - '5432:5432'
    volumes: 
      - db:/var/lib/postgresql/data
 ```

Used the "Other Explorer" installed in VSC to connect to Postgres:

<img width="1680" alt="Capture d’écran 2023-02-23 à 20 24 54" src="https://user-images.githubusercontent.com/11331502/221009827-3beb10f9-6527-4268-a3c5-fe0cdf8107ab.png">



### Homework chalanges 


#### Run the dockerfile CMD as an external script

Dockerfile : 

```
FROM python:3.10-slim-buster

WORKDIR /backend-flask

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_ENV=development

EXPOSE ${PORT}

COPY my_script.sh /usr/local/bin/my_script.sh

# Make the script executable
RUN chmod +x /usr/local/bin/my_script.sh

# Set the command to run the script
CMD ["my_script.sh"]
```


Script : 

```
# Run your commands here
python3 -m flask run --host=0.0.0.0 --port=4567 &
sleep 5
echo "Flask app running"


```

<img width="1680" alt="Capture d’écran 2023-02-23 à 23 22 26" src="https://user-images.githubusercontent.com/11331502/221044125-c85b1862-92b4-4e31-9303-a7bac6b320f8.png">



#### Push and tag a image to DockerHub (they have a free tier)


<img width="1680" alt="Capture d’écran 2023-02-23 à 23 27 00" src="https://user-images.githubusercontent.com/11331502/221045204-592dbd53-a7fd-45df-8f33-ebe8128bb17c.png">

<img width="1680" alt="Capture d’écran 2023-02-23 à 23 39 10" src="https://user-images.githubusercontent.com/11331502/221047187-b6ab81b8-b259-48d1-8c8f-f746f46fa177.png">

<img width="1680" alt="Capture d’écran 2023-02-23 à 23 42 24" src="https://user-images.githubusercontent.com/11331502/221047341-d5c17e7b-92a1-4a9c-8840-c00cf04d31f0.png">


#### Use multi-stage building for a Dockerfile build


> What is multi-stage building for a doker file ? 

Multi-stage builds allow you to create smaller and more efficient Docker images by using multiple FROM statements in your Dockerfile.
We can use multi-stage builds to optimize this Dockerfile for our Crudder backend application. : 

> by separating the build environment and runtime environment into two stages


```
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
ENV FLASK_ENV=production
EXPOSE ${PORT}
COPY my_script.sh /usr/local/bin/my_script.sh
RUN chmod +x /usr/local/bin/my_script.sh
CMD ["my_script.sh"]
```


>> building the same image and get size reduced 
 <img width="1680" alt="Capture d’écran 2023-02-24 à 18 33 16" src="https://user-images.githubusercontent.com/11331502/221249034-523999dc-571d-4c58-a2a7-5c3b8391538c.png">




#### Implement a healthcheck in the V3 Docker compose file

Adding this to docker compose file [Lin](https://docs.docker.com/engine/reference/builder/#healthcheck)

````sh

 healthcheck:
   test: curl --fail https://localhost:4567/api/activities/home
   interval: 30s
   timeout: 10s
   retries: 3
      
````

<img width="1680" alt="Capture d’écran 2023-02-26 à 10 23 02" src="https://user-images.githubusercontent.com/11331502/221402502-ae39c684-1ea5-429f-892d-cd7c8443b598.png">


> Best Practices Docker [Link](https://testdriven.io/blog/docker-best-practices/#prefer-copy-over-add)
### Research best practices of Dockerfiles and attempt to implement it in your Dockerfile

- Use official base images: Always use official base images from Docker Hub or a trusted registry. Official images are tested, maintained, and have better security practices.

- Keep images small: Use the alpine or slim version of the base image to keep the size of the Docker image small. Only include necessary dependencies and files in the image.

- Use multi-stage builds: Use multi-stage builds to separate the build environment and runtime environment. This can help reduce the size of the final image.

- Use a .dockerignore file: Use a .dockerignore file to exclude unnecessary files and directories from the build context. This can help reduce the size of the Docker build context and the final image.

- Avoid running as root: Avoid running containers as the root user to reduce the risk of security vulnerabilities. Instead, use a non-root user and set appropriate permissions on files and directories.

- Clean up after each step: Clean up after each step to remove unnecessary files and reduce the size of the final image. Use RUN rm -rf /var/lib/apt/lists/* to clean up apt-get caches and pip-cache purge to remove pip cache.

- Use environment variables: Use environment variables to make the Docker image configurable and easier to deploy in different environments.

- Run only one process per container: Run only one process per container. This makes it easier to scale and manage containers and helps with debugging.

- Use healthchecks: Use healthchecks to monitor the health of the container and to ensure that the container is running properly.

- Use COPY instead of ADD: Use the COPY command instead of the ADD command to copy files into the image. The ADD command can be used to download files from URLs, which can introduce security risks.

10. Learn how to install Docker on your localmachine and get the same containers running outside of Gitpod / Codespaces

 [source](https://docs.docker.com/desktop/install/windows-install/)


#### Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes. 

1. Create EC2 machine
<img width="1680" alt="Capture d’écran 2023-02-27 à 22 10 36" src="https://user-images.githubusercontent.com/11331502/221686501-65f6da5f-ced4-4b18-9c6c-96b020992ce2.png">

2. Launch the instance.
3. Get the .pem file 
4. Connect with ssh 
<img width="1680" alt="Capture d’écran 2023-02-27 à 22 11 30" src="https://user-images.githubusercontent.com/11331502/221687063-56ab7c59-aa41-48c3-a911-c0b9969e9f12.png">

5. Install docker 
```sh 
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install docker.io
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl enable docker

```
<img width="1505" alt="Capture d’écran 2023-02-27 à 22 37 33" src="https://user-images.githubusercontent.com/11331502/221691457-349819c2-19d0-47df-9396-c43d89fe4dbd.png">


