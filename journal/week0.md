# Week 0 — Billing and Architecture
 


## Required HomeWork/Tasks : 
After watching the live streamed video, and preparing all prerequisites tools, i have did required tasks like : 


### Creation aws Account : 
I Start with the creation of my aws account, after watching many videos instruction, i was able to create an aws account <strong> MOUSSAI </strong> without issue :

![Capture d’écran 2023-02-18 à 01 30 04](https://user-images.githubusercontent.com/11331502/219821097-8b150eff-c502-4ed4-9035-09ce85d1aeb1.png)

### Creation GitHub account : 
<img width="1242" alt="Capture d’écran 2023-02-18 à 12 01 08" src="https://user-images.githubusercontent.com/11331502/219856774-015ae6fc-2146-4a0c-94f3-4e9517f3271e.png">


### Creation of GitPod : 
<img width="1242" alt="Capture d’écran 2023-02-18 à 12 02 27" src="https://user-images.githubusercontent.com/11331502/219856820-770db4f5-58dd-43da-bc0a-820b95827291.png">


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


### Recreate Logical Conceptual Diagram in Lucid Charts or on a Napkin
 
 link : https://lucid.app/lucidchart/187d5835-c301-40a4-8939-ce08485b27b3/edit?viewport_loc=-494%2C-169%2C3430%2C2197%2CP4jyho4UR2O-&invitationId=inv_aa654553-6541-4273-97a6-7ede49850d6e 
![Capture d’écran 2023-02-18 à 13 19 34](https://user-images.githubusercontent.com/11331502/219865431-a704e7f5-8543-4897-a991-375e31dcee57.png)


link :https://lucid.app/lucidchart/187d5835-c301-40a4-8939-ce08485b27b3/edit?viewport_loc=-1465%2C-257%2C1899%2C1216%2C0_0&invitationId=inv_aa654553-6541-4273-97a6-7ede49850d6e

![Capture d’écran 2023-02-18 à 13 20 26](https://user-images.githubusercontent.com/11331502/219865445-3bd8ab0f-8e0a-426f-825e-0fee8aaef0ea.png)



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


### Create a billing alarm

<img width="1242" alt="Capture d’écran 2023-02-18 à 12 05 46" src="https://user-images.githubusercontent.com/11331502/219856966-78227043-b5ca-4a76-bf68-c90f66a7cadd.png">

![Capture d’écran 2023-02-18 à 01 34 57](https://user-images.githubusercontent.com/11331502/219821474-c9eea919-7c67-4477-b7cf-62cccdfd42e8.png)

### Create a Budget

I create two budget one zero limit and second is credit budget : 

<img width="1242" alt="Capture d’écran 2023-02-18 à 12 06 29" src="https://user-images.githubusercontent.com/11331502/219856995-7aeba655-a05d-48a7-8890-7040b7bed1ec.png">

![Capture d’écran 2023-02-18 à 12 09 08](https://user-images.githubusercontent.com/11331502/219857094-44f4759e-8620-457e-ac98-9fab9e146fe2.png)





##  Homework Challenges
 This part are for the homework chalanges : 

1. Destroy your root account credentials, Set MFA, IAM role : 

2. Use EventBridge to hookup Health Dashboard to SNS and send notification when there is a service health issue : 


-  ♾️ STEP 1 > [What is EventBridge](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-what-is.html)
-  ♾️ STEP 2 > [New EventBridge – Track and Respond to Changes to Your AWS Resources](https://aws.amazon.com/blogs/aws/new-cloudwatch-events-track-and-respond-to-changes-to-your-aws-resources/)
-  ♾️ STEP 3 > [Creating an EventBridge rule for AWS Health](https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html)


3. Review all the questions of each pillars in the Well Architected Tool (No specialized lens) : 

4. Create an architectural diagram (to the best of your ability) the CI/CD logical pipeline in Lucid Charts : 

URL : https://lucid.app/lucidchart/c59b08f6-2de3-4edc-a566-6ca6b6ee1c29/edit?invitationId=inv_d5811a16-bbbd-4822-9f94-e919edd6399e&page=0_0#

![Blank diagram](https://user-images.githubusercontent.com/11331502/219961362-12a0d409-1940-488a-9dd8-8222494eebe7.png)


5. Research the technical and service limits of specific services and how they could impact the technical path for technical flexibility : 
### Reference : 

6. Open a support ticket and request a service limit: 






