# 🚀 Task 2 — AWS EC2 with Terraform for_each

A hands-on Terraform project focused on provisioning multiple AWS EC2 instances using for_each, with each server having its own configuration.

The goal was simple: stop repeating resources and let Terraform handle multiple servers from a single resource block.

### 🎯 Objective

Provision multiple EC2 instances using Terraform where each instance can have its own:

- Instance type
- AMI
- Root EBS volume size
- Environment


Instead of creating separate aws_instance resources for every server, Terraform's for_each is used to dynamically create them from a map of configurations.

### 🏗️ What This Project Creates
```text
Server	Instance Type	Root Volume	Environment	Role
web_server	t3.micro	10 GB	test	web
app_server	t3.small	15 GB	prod	app
db_server	t8i.micro	20 GB	dev	database

```

All instances are provisioned using the same Terraform resource definition while their individual configurations come from variables.

Terraform then creates:

1. aws_instance.servers["web_server"]
2. aws_instance.servers["app_server"]
3. aws_instance.servers["db_server"]

### 🧠 What I Practiced
- Terraform for_each
- Maps and objects
- each.key and each.value
- Per-instance configuration
- Resource tagging
- Terraform for expressions

### 📤 Outputs
The project exposes useful information about the created instances:

- Instance IDs
- Private IP addresses
- Public IP addresses
- Availability Zones

🛠️ Technologies
Terraform
AWS EC2
Amazon EBS
AWS CLI
Git & GitHub

### ▶️ Run It

1. Initialize Terraform:

Run `terraform init`

2. Review the execution plan:

Run `terraform plan`

3. Create the infrastructure:

Run `terraform apply`

4. When finished with the lab:

Run `terraform destroy`

### 💡 Key Takeaway

The main learning from this project was understanding how Terraform can manage multiple similar resources without duplicating resource blocks.

for_each makes the configuration more scalable, readable, and easier to maintain when each resource needs its own values.

One resource block. Multiple servers. Individual configurations. That's the Terraform way. 🚀