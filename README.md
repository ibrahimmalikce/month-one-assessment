# TechCorp AWS Infrastructure - Month 1 Assessment

## Overview
This project provisions a highly available AWS web application 
infrastructure using Terraform. It includes a VPC, public and 
private subnets, EC2 instances, an Application Load Balancer, 
and a PostgreSQL database server.

## Architecture
- VPC with CIDR 10.0.0.0/16
- 2 Public Subnets across 2 Availability Zones
- 2 Private Subnets across 2 Availability Zones
- Internet Gateway + 2 NAT Gateways
- Bastion Host for secure admin access
- 2 Apache Web Servers in private subnets
- 1 PostgreSQL Database Server in private subnet
- Application Load Balancer in public subnets

## Prerequisites
- Terraform >= 1.3.0 installed
- AWS CLI installed and configured
- AWS account with appropriate permissions
- An existing AWS Key Pair

## Deployment Steps

### 1. Clone the repository
```bash
git clone https://github.com/ibrahimmalikce/month-one-assessment.git
cd month-one-assessment
2. Terraform Files (code)
	∙	main.tf — all your AWS resources
	∙	variables.tf — all variable declarations
	∙	outputs.tf — VPC ID, ALB DNS, Bastion IP
	∙	terraform.tfvars.example — example values, no sensitive data
3. User Data Scripts
	∙	user_data/web_server_setup.sh — installs Apache + HTML page showing instance ID
	∙	user_data/db_server_setup.sh — installs and configures PostgreSQL
4. Screenshots (evidence/ folder)
	∙	Terraform plan output
	∙	Terraform apply completion
	∙	AWS Console showing all created resources
	∙	ALB URL serving web pages from both instances (must show the URL in the screenshot)
	∙	SSH into Bastion host
	∙	SSH from Bastion into Web servers
	∙	SSH from Bastion into DB server
	∙	Connected to PostgreSQL on the DB server
5. Terraform State File
	∙	terraform.tfstate — exported after apply, no sensitive data exposed
6. terraform destroy 
