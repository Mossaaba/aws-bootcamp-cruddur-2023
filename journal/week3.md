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



3. Customisation of authentification react component : 

<img width="1680" alt="Capture d’écran 2023-03-08 à 23 51 30" src="https://user-images.githubusercontent.com/11331502/223869449-4b344f55-870e-4f0d-92ca-d0621c9968b1.png">

- Adding environment variables to dockerComposeFile : 
<img width="1680" alt="Capture d’écran 2023-03-08 à 23 53 27" src="https://user-images.githubusercontent.com/11331502/223869734-99d166dc-7ad9-43e8-8f2b-ed530209f2a7.png">


- Create user : 
<img width="1680" alt="Capture d’écran 2023-03-08 à 23 52 48" src="https://user-images.githubusercontent.com/11331502/223869654-1eba6144-510d-4140-a32b-2ad0e3dcf090.png">

4. Getting autehntification error 

![Capture d’écran 2023-03-04 à 19 44 52](https://user-images.githubusercontent.com/11331502/223543538-b3dabd46-fce5-428f-b78e-6c7c055a1f7a.png)

5. Force validating user cognito user , and then try to connect : 

- Successful connexion 

<img width="1680" alt="Capture d’écran 2023-03-08 à 23 55 56" src="https://user-images.githubusercontent.com/11331502/223870188-621e1068-2ccb-40ff-9ea7-8bdf497228d7.png">

