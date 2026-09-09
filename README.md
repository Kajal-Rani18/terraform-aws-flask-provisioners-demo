
# Terraform Flask Application Deployment Demo

This project is intended as a hands-on DevOps learning project that uses Terraform to provision an AWS EC2 instance and deploy a simple Python Flask application using Terraform provisioners and SSH connection.This project demonstrates how Infrastructure as Code can be combined with application deployment and server provisioning.

The application displays:

#### Hello Terraform!

## 📌 Project Overview

The goal of this project is to automate the following process:

- Provision AWS infrastructure using Terraform.
- Create an EC2 instance.
- Connect to the EC2 instance using SSH.
- Install Python and Flask.
- Copy the Flask application to the EC2 instance.
- Start the Flask application.
- Access the application through the EC2 public IP.

Instead of manually configuring the EC2 server, Terraform automates the deployment process.

```text
🏗️ Architecture
                    Internet
                       |
                       |
                AWS Security Group
                  TCP Port 80
                       |
                       v
                +---------------+
                |   AWS EC2     |
                |   Ubuntu      |
                |               |
                |  Python 3     |
                |  Flask        |
                |               |
                |  Port 80    |
                +-------+-------+
                        |
                        v
                "Hello Terraform!"
```

### 🚀 Deployment Workflow

The deployment follows this process:
```text
Terraform Configuration
          |
          v
terraform init
          |
          v
terraform plan
          |
          v
terraform apply
          |
          v
AWS EC2 Created
          |
          v
SSH Connection
          |
          v
Install Python + Flask
          |
          v
Copy app.py
          |
          v
Start Flask
          |
          v
Port 80
          |
          v
Web Browser
```

## ⚙️ Prerequisites

Before running this project, following needs to be installed and configured:

- Terraform
- AWS CLI
- Git
- An AWS account
- An SSH key pair
- An AWS IAM user/role with appropriate permissions

1. Verify Terraform:
    - `terraform --version`
2. Verify AWS CLI:
    - Run `aws --version`
3. Configure Aws Account
    - Run `aws configure`   
4. Verify AWS authentication:
    - Run `aws sts get-caller-identity`

## 🔍 Verify the Deployment

After Terraform creates the EC2 instance, connect to it using SSH:

Run `ssh -i ~/.ssh/id_rsa ubuntu@<EC2_PUBLIC_IP>`

Check that the application exists:

Run `ls -l /home/ubuntu/app.py`

Start the application:

Run `sudo python3 /home/ubuntu/app.py`

Expected output:
```text
* Serving Flask app 'app'
* Debug mode: off
* Running on all addresses (0.0.0.0)
* Running on http://127.0.0.1:80
``` 
## 📚 What I Learned

This project helped me practice:

- Infrastructure as Code using Terraform
- AWS EC2 provisioning
- AWS networking fundamentals
- Security Groups
- SSH authentication
- Terraform connection blocks
- Terraform provisioners
- Remote command execution
- File provisioning
- Python Flask deployment
- Linux server administration
- Git and GitHub
- Troubleshooting application deployment issues

#### 👨‍💻 Author

- Kajal Prajapati
- DevOps / Cloud Engineering Learning Project