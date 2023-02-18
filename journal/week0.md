# Week 0 — Billing and Architecture
 


## Required HomeWork/Tasks : 

After watching the live streamed video, and preparing all prerequisites tools, i was enjyoing with doing the many tasks like : 


### Creation aws Account : 

I Start with the creation of my aws account, after watching many videos instruction, i was able to create an aws account <strong> MOUSSAI </strong> without issue 

![Capture d’écran 2023-02-18 à 01 30 04](https://user-images.githubusercontent.com/11331502/219821097-8b150eff-c502-4ed4-9035-09ce85d1aeb1.png)


### Watched Chirag's Week 0 - Spend Considerations : 

After watching 'the Watched Chirag's Week 0 - Spend Considerations', i was able to improuve my understanding about billing and free tiers, and i learn how : 

1. Mange billing with aws billing dashbord, and billing prefrences.
2. How to use cloudWatch for billing to create a billing alarm.
![Capture d’écran 2023-02-18 à 11 15 22](https://user-images.githubusercontent.com/11331502/219854960-267d6a79-2c25-42cb-bd01-17239f7fc80c.png)
3. Create a budget : 
![image](https://user-images.githubusercontent.com/11331502/219855044-a092f0e6-9b8d-439d-b405-fdbbf3021ea0.png)
4. Exploring aws cost management.
5. How to use crédit.
6. Aws cost calculator (730 hours by month ).
7. Exploring free tiers details with services totaly free and other with 12 months.


### Watched Ashish's Week 0 - Security Considerations : 

In this video, i learn many things about cloud security : 
- Definition , why , and how to earn this skill (With a practice and practice).
- Discovring IAM service. 
- Enbaling MFA for root user.
![Capture d’écran 2023-02-18 à 11 28 23](https://user-images.githubusercontent.com/11331502/219855527-73e11ff3-0f4e-48ac-bba5-079223b1fd71.png)
- Creating organization unite.
![Capture d’écran 2023-02-18 à 11 30 42](https://user-images.githubusercontent.com/11331502/219855613-4f1687c1-4b2b-4bdd-85a4-c1f87c4089b1.png)
- Creating active and standby account folder.
- Ceating BUs and moving theme between organization.
- Enbbaling AWS CLOUD TRAIL : for monitorng data and security residence.
- Resgion and availability zone (AZ is a subnet into a region )
- All users should have MFA enable.
- Create a user from IAM
<img width="952" alt="Capture d’écran 2023-02-18 à 11 36 27" src="https://user-images.githubusercontent.com/11331502/219855831-57e07698-6ab9-4334-a473-039664262d0f.png">
- Understanding the difference between IAM roles and IAM Policies 
- Create IAM roles and attach policy.
- SCP : service controle policy for an organization.


### Recreate Conceptual Diagram in Lucid Charts or on a Napkin
 
 - URL :  


### Create an user admin


### Installed AWS CLI 
- GitPod installation and configuration : 
 * Install AWS CLI : sudo ./aws/install
 * Version : /usr/local/bin/aws --version
 * Generate AWS Credentials
 * Set gitpod environment varaiables : 
 ```
      'gp env AWS_ACCESS_KEY_ID=""
      'gp env AWS_SECRET_ACCESS_KEY=""
      'gp env AWS_DEFAULT_REGION=us-east-1"
  ```
      
* Check configuration : aws sts get-caller-identity : 
![Capture d’écran 2023-02-18 à 01 40 37](https://user-images.githubusercontent.com/11331502/219821803-6ece54a8-2a64-4f64-90da-ef74d39d331e.png)


### Create a bbilling alarm

![Capture d’écran 2023-02-18 à 01 34 57](https://user-images.githubusercontent.com/11331502/219821474-c9eea919-7c67-4477-b7cf-62cccdfd42e8.png)

### Create a Budget

####  URL: 





##  Homework Challenges
 This part are for the homework chalanges : 

1. Destroy your root account credentials, Set MFA, IAM role : 



2. Use EventBridge to hookup Health Dashboard to SNS and send notification when there is a service health issue : 



3. Review all the questions of each pillars in the Well Architected Tool (No specialized lens) : 



4. Create an architectural diagram (to the best of your ability) the CI/CD logical pipeline in Lucid Charts : 



5. Research the technical and service limits of specific services and how they could impact the technical path for technical flexibility : 



6. Open a support ticket and request a service limit: 
