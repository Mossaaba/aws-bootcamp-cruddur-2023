# Week 0 — Billing and Architecture
This is the first week of the AWS bootcamp : 



#  URL: 





# Weekly Stacks : 

- Creation aws Account 
![Capture d’écran 2023-02-18 à 01 30 04](https://user-images.githubusercontent.com/11331502/219821097-8b150eff-c502-4ed4-9035-09ce85d1aeb1.png)

- IAM configuration 
![Capture d’écran 2023-02-18 à 01 30 04](https://user-images.githubusercontent.com/11331502/219821167-90ad9a2b-d4cf-49bd-a5b2-c2b49bcf9830.png)

- Creating Budget : 
 * User Interface :  ![image](https://user-images.githubusercontent.com/11331502/219821278-5930f47c-0032-4d32-9ac5-958208fda842.png)
 * AWS CLI 

- Creating Billing alarms : 
![Capture d’écran 2023-02-18 à 01 34 57](https://user-images.githubusercontent.com/11331502/219821474-c9eea919-7c67-4477-b7cf-62cccdfd42e8.png)


- GitPod installation and configuration : 
 * Install AWS CLI : sudo ./aws/install
 * Version : /usr/local/bin/aws --version
 * Generate AWS Credentials
 * Set gitpod environment varaiables : 
      'gp env AWS_ACCESS_KEY_ID=""
      'gp env AWS_SECRET_ACCESS_KEY=""
      'gp env AWS_DEFAULT_REGION=us-east-1
      
* Check configuration : aws sts get-caller-identity : 
![Capture d’écran 2023-02-18 à 01 40 37](https://user-images.githubusercontent.com/11331502/219821803-6ece54a8-2a64-4f64-90da-ef74d39d331e.png)






#  Homework Challenges
 This part are for the homework chalanges : 

1. Destroy your root account credentials, Set MFA, IAM role : 



2. Use EventBridge to hookup Health Dashboard to SNS and send notification when there is a service health issue : 



3. Review all the questions of each pillars in the Well Architected Tool (No specialized lens) : 



4. Create an architectural diagram (to the best of your ability) the CI/CD logical pipeline in Lucid Charts : 



5. Research the technical and service limits of specific services and how they could impact the technical path for technical flexibility : 



6. Open a support ticket and request a service limit: 
