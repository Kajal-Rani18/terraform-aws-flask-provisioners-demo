# terraform-aws-flask-provisioners-demo
# Terraform Flask Application Deployment

This project is intended as a hands-on DevOps learning project that uses Terraform to provision an AWS EC2 instance and deploy a simple Python Flask application using Terraform provisioners and SSH connection.

The application displays:

## Hello Terraform!

This project demonstrates how Infrastructure as Code can be combined with application deployment and server provisioning.

# 📌 Project Overview

The goal of this project is to automate the following process:

Provision AWS infrastructure using Terraform.
Create an EC2 instance.
Connect to the EC2 instance using SSH.
Install Python and Flask.
Copy the Flask application to the EC2 instance.
Start the Flask application.
Access the application through the EC2 public IP.

Instead of manually configuring the EC2 server, Terraform automates the deployment process.

🏗️ Architecture
                    Internet
                       |
                       |
                AWS Security Group
                  TCP Port 5000
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

🚀 Deployment Workflow

The deployment follows this process:

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

# ⚙️ Prerequisites

Before running this project, make sure the following are installed and configured:

Terraform
AWS CLI
Git
An AWS account
An SSH key pair
An AWS IAM user/role with appropriate permissions

Verify Terraform:

terraform version

Verify AWS CLI:

aws --version

Verify AWS authentication:

aws sts get-caller-identity

# 🔍 Verify the Deployment

After Terraform creates the EC2 instance, connect to it using SSH:

ssh -i ~/.ssh/id_rsa ubuntu@<EC2_PUBLIC_IP>

Check that the application exists:

ls -l /home/ubuntu/app.py

Check the Flask installation:

python3 -c "import flask; print(flask.__version__)"

Start the application:

sudo python3 /home/ubuntu/app.py

Expected output:

* Serving Flask app 'app'
* Debug mode: off
* Running on all addresses (0.0.0.0)
* Running on http://127.0.0.1:80

# 📚 What I Learned

This project helped me practice:

Infrastructure as Code using Terraform
AWS EC2 provisioning
AWS networking fundamentals
Security Groups
SSH authentication
Terraform connection blocks
Terraform provisioners
Remote command execution
File provisioning
Python Flask deployment
Linux server administration
Git and GitHub
Troubleshooting application deployment issues

# 👨‍💻 Author

Kajal Prajapati

DevOps / Cloud Engineering Learning Project