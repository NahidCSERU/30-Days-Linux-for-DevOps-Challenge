# Day 29 - Terraform Basics: Launch Linux EC2

This project demonstrates **launching a Linux EC2 instance** on AWS using Terraform.

## Features
- Launch t2.micro EC2 instance
- Security group with SSH access
- Outputs public IP and instance ID
- Simple and professional structure

## Usage

**1. Initialize Terraform:**
```
terraform init
```
**2. Plan deployment:**
```
terraform plan
```

**3. Apply deployment:**
```
terraform apply
```

**4. Access EC2 via SSH:**
```
ssh -i your-key.pem ec2-user@<ec2_public_ip>
```

**Pro Tips:**
1. Use a **Linux AMI** (Amazon Linux 2) for simplicity.  
2. Security Group allows only SSH for secure access.  
3. Outputs make it easy to get public IP and instance ID.  
4. Small, clean, ready for GitHub showcase.  
