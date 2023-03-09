# Week 3 — Decentralized Authentication


### Cognito 

1. ``Amazon Cognito`` is a fully managed service that provides authentication, authorization, and user management for web and mobile applications, helping developers quickly add user sign-up, sign-in, and access control to their applications. Its purpose is to simplify the development process and improve the security of user data.

<img width="1180" alt="Capture d’écran 2023-03-08 à 20 06 03" src="https://user-images.githubusercontent.com/11331502/223813577-7ad634c4-02f5-437d-8c3d-66fc90423c90.png">
>> We can use between user pool or federate identity 


2. Cretae a user pool with cognito : 

- Choose Email and name

<img width="1680" alt="Capture d’écran 2023-03-08 à 20 30 45" src="https://user-images.githubusercontent.com/11331502/223824445-d1a46573-b891-472c-ad77-3b7a39f2e80c.png">


### Amplify JS

3. ```AWS Amplify`` is a set of tools and services that enables developers to build scalable and secure cloud-powered web and mobile applications. Its purpose is to simplify the development process by providing pre-built components, backend services, and integration with other AWS services.

- Install [amplify](https://docs.amplify.aws/start/q/integration/react/)

```sh
npm i aws-amplify --save
# Dev environement
# npm i aws-amplify --save-dev 
```


-- import amplify into app.js `` import { Amplify } from 'aws-amplify'; ``

### React JS part 

- Customisation of authentification react component : 

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


6- Add name and preferred name : 

<img width="1680" alt="Capture d’écran 2023-03-09 à 00 04 47" src="https://user-images.githubusercontent.com/11331502/223872593-b19b35d3-8ebf-422a-9d8b-ffa2d2961a04.png">



### SingIn && singOut && recovery 

7- Add SignIn with confirmation email code : 

<img width="1680" alt="Capture d’écran 2023-03-09 à 00 32 42" src="https://user-images.githubusercontent.com/11331502/223877099-21bef390-6930-4488-b4ef-afb33c27937e.png">


<img width="1360" alt="Capture d’écran 2023-03-09 à 00 32 25" src="https://user-images.githubusercontent.com/11331502/223877017-5cab106b-21a0-4912-9b19-9e16abbd18a1.png">

8- Adding SignOut 

<img width="1680" alt="Capture d’écran 2023-03-09 à 00 36 45" src="https://user-images.githubusercontent.com/11331502/223877272-d4492e01-c05c-479c-ad09-c5c6b5e8f5d7.png">

9- Add recovery page : 
<img width="1452" alt="Capture d’écran 2023-03-09 à 00 49 50" src="https://user-images.githubusercontent.com/11331502/223878984-07066bb1-7b52-4f0b-b9cb-ba37a3a4d2e0.png">

### JWTs


10 - Lean about different approaches to verifying JWTs, and how can securise endpoints with AWS api gateway [AWS JWT](https://aws.amazon.com/fr/blogs/security/how-to-secure-api-gateway-http-endpoints-with-jwt-authorizer/)

11- How tp implement JWI with flask [LINK](https://www.geeksforgeeks.org/using-jwt-for-user-authentication-in-flask/) 





