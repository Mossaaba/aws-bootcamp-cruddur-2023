# Week 1 — App Containerization. (Read and correct again)

to resume : 

Calssromme : 

- Run the app (Front + back ) localy 
- Run each application with docker 
- Run bother with docker compose 
- Writing falsk notification using open API
- Ading new react page  

Security : 


- Why i should care about docker sucrity : because most toolS USE IT and have to be secure 
- Snan in anbrew 
- Manged container service ECS ,
- Unmaged spending a lot of time to update   
- Best practise for containirasion 
- Use Synk open source to sacan and get suggestion (SRC) https://app.snyk.io/org/mossaaba/project/6d809264-2847-4b38-9daf-4092a461c0fc
- Should have a secrete manager 
- How to use aws seceret manager 
- AWS Inspector/Clair to scane imgage docker / container / instance / lammbda 
- Scan images with Synk localy 

- Create a docker file build the image push the image to the repository 
- if we don't specify th : tag , the docker damon will be uset the lastest as default 


### Hand-On

1. Create a new GitHub repo and lunch the week-1 with gitPod.
3. Launch the repo within a Gitpod workspace
4. Configure Gitpod.yml configuration, eg. I’m VSCode Extensions
5. Clone the frontend and backend repo
6. Explore the codebases
![Capture d’écran 2023-02-23 à 10 29 46](https://user-images.githubusercontent.com/11331502/220868759-f55da7f5-55de-42fc-acc9-16f8d8a3dd96.png)



(Unlock the port)

7. Ensure we can get the apps running locally

 ![Capture d’écran 2023-02-23 à 10 37 11](https://user-images.githubusercontent.com/11331502/220870400-adb05d2b-3b52-441b-aa54-44ab3159e100.png)


8. Write a Dockerfile for each app

#### backend-flask : 
![Capture d’écran 2023-02-23 à 11 43 36](https://user-images.githubusercontent.com/11331502/220884845-fc991f24-dbc2-4f9f-8bb1-8ad94e71d422.png)


### frontend-flask : 
<img width="1680" alt="Capture d’écran 2023-02-23 à 13 25 08" src="https://user-images.githubusercontent.com/11331502/220905139-eddc70cf-63cb-447d-886e-aee2eb3e9bc1.png">
![Uploading Capture d’écran 2023-02-23 à 13.25.08.png…]()


8. Write a Dockerfile for each app
- capture docker extension 
![Capture d’écran 2023-02-23 à 12 03 31](https://user-images.githubusercontent.com/11331502/220888829-9dd6935c-3b5c-4ff3-bca2-8b9d4193250b.png)

10. Ensure we get the apps running via individual container
#### backend-flask : run the container 
<img width="1680" alt="Capture d’écran 2023-02-23 à 12 15 06" src="https://user-images.githubusercontent.com/11331502/220891088-3b7fa918-3d61-442b-8b0d-257713afe771.png">

#### frontend-flask : run the container 

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 27 08" src="https://user-images.githubusercontent.com/11331502/220905568-5b699afc-1d4b-4910-8434-4dfe1d60e877.png">

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 26 19" src="https://user-images.githubusercontent.com/11331502/220905351-abb825d1-3e47-42da-ae8f-f37ff34914a1.png">


12. Create a docker-compose file

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 28 51" src="https://user-images.githubusercontent.com/11331502/220905897-cea8859e-daf5-48c4-a598-97d0d1395ed7.png">

run docker compose 
<img width="1680" alt="Capture d’écran 2023-02-23 à 13 31 13" src="https://user-images.githubusercontent.com/11331502/220906318-a87a4d01-13c7-4562-8105-35a13fdccc1d.png">

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 31 58" src="https://user-images.githubusercontent.com/11331502/220906579-a4847bbf-75da-43d2-856d-0763a41e41fc.png">


14. Ensure we can orchestrate multiple containers to run side by side
<img width="1680" alt="Capture d’écran 2023-02-23 à 13 37 07" src="https://user-images.githubusercontent.com/11331502/220907855-8cb2cf53-86a2-4de5-af7e-a225aada9458.png">


16. Mount directories so we can make changes while we code

<img width="1680" alt="Capture d’écran 2023-02-23 à 13 34 55" src="https://user-images.githubusercontent.com/11331502/220907362-14198fe6-8430-4a48-94e3-ce64bc9f25bf.png">

<img width="1012" alt="image" src="https://user-images.githubusercontent.com/11331502/220907596-edf843b9-e104-4bc4-9c71-19b154390396.png">


<img width="1680" alt="image" src="https://user-images.githubusercontent.com/11331502/220906902-15faeb82-3b55-44a2-a334-8994bdb836bc.png">


#### Add notifications : 
<img width="1680" alt="Capture d’écran 2023-02-23 à 19 33 57" src="https://user-images.githubusercontent.com/11331502/220999098-ef09b8f4-255e-43b1-bace-168596d3d58f.png">


Connecting postgreSQL

<img width="1680" alt="Capture d’écran 2023-02-23 à 20 24 54" src="https://user-images.githubusercontent.com/11331502/221009827-3beb10f9-6527-4268-a3c5-fe0cdf8107ab.png">



### Homework chalanges 


1. Run the dockerfile CMD as an external script

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



3. Push and tag a image to DockerHub (they have a free tier)

<img width="1680" alt="Capture d’écran 2023-02-23 à 23 27 00" src="https://user-images.githubusercontent.com/11331502/221045204-592dbd53-a7fd-45df-8f33-ebe8128bb17c.png">

<img width="1680" alt="Capture d’écran 2023-02-23 à 23 39 10" src="https://user-images.githubusercontent.com/11331502/221047187-b6ab81b8-b259-48d1-8c8f-f746f46fa177.png">


<img width="1680" alt="Capture d’écran 2023-02-23 à 23 42 24" src="https://user-images.githubusercontent.com/11331502/221047341-d5c17e7b-92a1-4a9c-8840-c00cf04d31f0.png">


5. Use multi-stage building for a Dockerfile build



- What is multi-stage building for a doker file ? 

Multi-stage builds allow you to create smaller and more efficient Docker images by using multiple FROM statements in your Dockerfile.
We can use multi-stage builds to optimize this Dockerfile for our Crudder backend application. : 

-- by separating the build environment and runtime environment into two stages
```
##################################
# Stage 1: Build the application 
##################################
FROM python:3.10-slim-buster AS build
WORKDIR /backend-flask
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
####################################
# Stage 2: Create the docker image
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
7. Implement a healthcheck in the V3 Docker compose file
8. Research best practices of Dockerfiles and attempt to implement it in your Dockerfile

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

https://docs.docker.com/desktop/install/windows-install/


12. Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes. 
