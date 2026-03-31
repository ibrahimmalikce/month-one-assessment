###############################################################
# OUTPUTS
###############################################################

output "vpc_id" {
  description = "The ID of the TechCorp VPC"
  value       = aws_vpc.main.id
}

output "alb_dns_name" {
  description = "The DNS name of the Application Load Balancer"
  value       = aws_lb.main.dns_name
}

output "bastion_public_ip" {
  description = "The public IP address of the Bastion Host"
  value       = aws_eip.bastion.public_ip
}

output "web_1_private_ip" {
  description = "Private IP of Web Server 1"
  value       = aws_instance.web_1.private_ip
}

output "web_2_private_ip" {
  description = "Private IP of Web Server 2"
  value       = aws_instance.web_2.private_ip
}

output "db_private_ip" {
  description = "Private IP of Database Server"
  value       = aws_instance.database.private_ip
}