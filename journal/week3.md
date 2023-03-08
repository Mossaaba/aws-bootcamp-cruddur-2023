# Week 3 — Decentralized Authentication


### Incognito 

1. ``Amazon Cognito`` is a fully managed service that provides authentication, authorization, and user management for web and mobile applications, helping developers quickly add user sign-up, sign-in, and access control to their applications. Its purpose is to simplify the development process and improve the security of user data.

<img width="1180" alt="Capture d’écran 2023-03-08 à 20 06 03" src="https://user-images.githubusercontent.com/11331502/223813577-7ad634c4-02f5-437d-8c3d-66fc90423c90.png">
>> We can use between user pool or federate identity 


2. Cretae a user pool with cognito : 

- Choose Email and name

<img width="1680" alt="Capture d’écran 2023-03-08 à 20 30 45" src="https://user-images.githubusercontent.com/11331502/223824445-d1a46573-b891-472c-ad77-3b7a39f2e80c.png">


3. ```AWS Amplify`` is a set of tools and services that enables developers to build scalable and secure cloud-powered web and mobile applications. Its purpose is to simplify the development process by providing pre-built components, backend services, and integration with other AWS services.

- Install [amplify](https://docs.amplify.aws/start/q/integration/react/)

```sh
npm i aws-amplify --save
# Dev environement
# npm i aws-amplify --save-dev 
```


-- import amplify into app.js `` import { Amplify } from 'aws-amplify'; ``






3. Add keys to docker-compose REACT service

![Capture d’écran 2023-03-04 à 19 12 03](https://user-images.githubusercontent.com/11331502/223543391-6129bc74-10c6-4817-b1d6-c633bbf187a3.png)


4. Adding code to REACT to intergate amplify authentifiation 

![Capture d’écran 2023-03-04 à 19 44 52](https://user-images.githubusercontent.com/11331502/223543538-b3dabd46-fce5-428f-b78e-6c7c055a1f7a.png)
