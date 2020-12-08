# Cloud Developer ND Course 2: Design for Performance and Scalability

---

## Project  Instructions

### Exercise 1

1. Download the [starter code](https://github.com/udacity/cand-c2-project).
2. In the main.tf file write the code to provision
   * AWS as the cloud provider
   * Use an existing VPC ID
   * Use an existing public subnet
   * 4 AWS t2.micro EC2 instances named Udacity T2
   * 2 m4.large EC2 instances named Udacity M4
3. Run Terraform. 
4. Take a screenshot of the 6 EC2 instances in the AWS console and save it as `Terraform_1_1`. 
5. Use Terraform to  delete the 2 m4.large instances 
6. Take an updated screenshot of the AWS console showing only the 4 t2.micro instances and save it as `Terraform_1_2`

### Exercise 2

1. In the  Exercise_2 folder, write the code to deploy an AWS Lambda Function using Terraform. Your code should include:

   * A lambda.py file
   * A main.tf file with AWS as the provider, and IAM role for Lambda, a VPC, and a public subnet
   * An outputs.tf file
   * A variables.tf file with an AWS region
  
2. Take a screenshot of the EC2 instances page
3. Take a screenshot of the VPC page 

terraform init
terraform plan
aws lambda list-functions
{
    "Functions": []
}


Outcome:
1. Task 1: Task1
2. Task 2: Task2
3. Task 3: Task3
4. Task 4: Task4
5. Task 5: Task5
6. Task 6: Task6

Notes:
1. 3 Tier Arch:
   https://lucid.app/lucidchart/invitations/accept/fc0a2985-8533-495d-9332-c98c9d7d937d
   Serverless Arch:
   https://lucid.app/lucidchart/invitations/accept/467cbd45-084c-4341-92b7-d1b74e253240
2. In "Task 2", Each estimate CSV has respective .txt having explanation
3. Exercise 2: UdacityM4 deleted by commenting out that code.
4. Task 3: 
    1. Faced issue with CloudTrail user. Able to perform same action from Admin account.
    2. Fixed issue and updated solution at https://knowledge.udacity.com/questions/399056?utm_campaign=ret_600_auto_ndxxx_knowledge-comment-created_na&utm_source=blueshift&utm_medium=email&utm_content=ret_600_auto_ndxxx_knowledge-comment-created_na&bsft_clkid=1238a21a-56f0-4f98-bd45-9f1726c8077e&bsft_uid=73b14e77-af08-4513-87ed-e3ec70e8437a&bsft_mid=0a0fb974-1f71-4289-92f0-aac2d2c991df&bsft_eid=64e4ccff-21b0-44a8-abc6-a9081789abfc&bsft_txnid=e8ec19c9-e9fe-45c2-ad2f-8445cec25cec&bsft_mime_type=html&bsft_ek=2020-12-05T07%3A08%3A32Z&bsft_aaid=8d7e276e-4a10-41b2-8868-423fe96dd6b2&bsft_lx=1&bsft_tv=1#399085
5. Task 6: To avoid charges already deleted instances, hence attached deletion of lambda stack.
