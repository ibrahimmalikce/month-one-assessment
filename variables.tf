variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-1"
}

variable "instance_type_web" {
  description = "Instance type for web servers"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_bastion" {
  description = "Instance type for bastion host"
  type        = string
  default     = "t3.micro"
}

variable "instance_type_db" {
  description = "Instance type for database server"
  type        = string
  default     = "t3.small"
}

variable "key_pair_name" {
  description = "Name of the AWS key pair for EC2 access"
  type        = string
}

variable "my_ip" {
  description = "Your current IP address for Bastion SSH access (without /32)"
  type        = string
}