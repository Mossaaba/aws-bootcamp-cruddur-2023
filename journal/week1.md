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

### Homework chalanges 


1. Run the dockerfile CMD as an external script
2. Push and tag a image to DockerHub (they have a free tier)
3. Use multi-stage building for a Dockerfile build
4. Implement a healthcheck in the V3 Docker compose file
5. Research best practices of Dockerfiles and attempt to implement it in your Dockerfile
6. Learn how to install Docker on your localmachine and get the same containers running outside of Gitpod / Codespaces
7. Launch an EC2 instance that has docker installed, and pull a container to demonstrate you can run your own docker processes. 
