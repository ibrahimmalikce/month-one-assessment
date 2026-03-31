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