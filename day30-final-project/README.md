# Day 30 – Final AWS Infrastructure Project

## Overview

This project demonstrates a **production-like AWS infrastructure** built using **Terraform**. It includes secure networking, compute, database, load balancing, and centralized logging — designed to showcase **real-world DevOps & Cloud Engineering practices.**

## Architecture

**Key Components:**

- **VPC:** Custom Virtual Private Cloud with public and private subnets.

- **EC2 Instances:**

    - Public EC2 for application hosting.

    - Private EC2 for backend processing.

- **RDS Database:** MySQL instance in private subnet for secure data storage.

- **Application Load Balancer (ALB):** Distributes traffic to EC2 instances for high availability.

- **S3 Logs:** Centralized logging for ALB and application data.   


## Tech Stack

- **Terraform** (Infrastructure as Code)

- **AWS Services:** VPC, EC2, RDS, ALB, S3, IAM, Security Groups

- **MySQL** (Database Engine)

- **Amazon Linux 2** (EC2 AMI)

## Deployment
1️⃣ Clone Repository
```
git clone https://github.com/NahidCSERU/30-Days-AWS-Terraform-Challenge.git
cd day30-final-project
```
2️⃣ Initialize Terraform
```
terraform init
```
3️⃣ Apply Configuration
```
terraform apply -auto-approve
```
4️⃣ Access Application

After deployment, get the **ALB DNS Name:**
```
terraform output alb_dns_name
```
Paste the DNS name into your browser to access the application.

## Security Best Practices

- Private subnets restrict direct access to sensitive resources.

- Security Groups enforce least-privilege access.

- Logs stored in S3 for auditing and monitoring.

## Repository Structure
```
day30-final-project/
├── main.tf          # AWS resources (VPC, EC2, RDS, ALB, S3)
├── variables.tf     # Input variables
├── outputs.tf       # Terraform outputs
├── provider.tf      # AWS provider config
└── README.md        # Project documentation
```
## Future Improvements

- Add Auto Scaling Group (ASG) for EC2.

- Enable CloudWatch monitoring & alarms.

- Automate database backups.