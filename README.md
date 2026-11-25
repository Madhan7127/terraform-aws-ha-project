# Highly Available AWS Infrastructure using Terraform

## Project Overview

This project provisions a highly available and scalable AWS infrastructure using Terraform.

The infrastructure is deployed in the AWS US West (N. California) region (`us-west-1`) and follows modular Infrastructure as Code (IaC) practices.

## Architecture Components

- Custom AWS VPC
- Public and Private Subnets across 2 Availability Zones
- Internet Gateway
- Two NAT Gateways
- Route Tables and Associations
- Security Groups
- EC2 Launch Template
- Auto Scaling Group
- Application Load Balancer
- Target Group and Listener
- Amazon RDS MySQL with Multi-AZ
- Terraform Modules
- Amazon S3 Remote State Backend
- S3 State Versioning and Encryption
- Terraform State Locking

## AWS Services Used

- Amazon VPC
- Amazon EC2
- Elastic Load Balancing
- EC2 Auto Scaling
- Amazon RDS
- Amazon S3
- AWS IAM
- Terraform

## Terraform Structure

```text
terraform-aws-ha-project/
├── modules/
│   ├── vpc/
│   ├── security/
│   ├── ec2/
│   ├── alb/
│   └── rds/
├── environments/
├── provider.tf
├── terraform.tf
├── variables.tf
├── outputs.tf
├── locals.tf
├── vpc.tf
├── security-groups.tf
├── launch-template.tf
├── autoscaling.tf
├── alb.tf
├── rds.tf
├── db-subnet-group.tf
├── internet-gateway.tf
├── nat-gateway.tf
├── route-tables.tf
└── README.md
