# Week 1 — App Containerization

to resume : 

- run the application fronend
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


8. Write a Dockerfile for each app
10. Ensure we get the apps running via individual container
11. Create a docker-compose file
12. Ensure we can orchestrate multiple containers to run side by side
13. Mount directories so we can make changes while we code



### Homework chalanges 


1. Run the dockerfile CMD as an external script
2. Push and tag a image to DockerHub (they have a free tier)
3. Use multi-stage building for a Dockerfile build
4. Implement a healthcheck in the V3 Docker compose file
5. Research best practices of Dockerfiles and attempt to implement it in your Dockerfile
6. Learn how to install Docker on your localmachine and get the same containers running outside of Gitpod / Codespaces
7. Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes. 
