output "aws_vpc_id" {
  value       = module.vpc.vpc_id
  sensitive   = false
  description = "ID do VPC"
}

output "aws_security_group_id" {
  value       = module.vpc.security_group_id
  sensitive   = false
  description = "ID do Security Group"
}

output "public_subnet_id" {
  value       = module.vpc.public_subnet_id
  sensitive   = false
  description = "ID da primeira subnet pública"
}

output "public_dns" {
  value       = module.ec2.public_dns
  sensitive   = false
  description = "DNS público do EC2"
}

output "public_id" {
  value       = module.ec2.public_ip
  sensitive   = false
  description = "IP público do EC2"
}