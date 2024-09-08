output "vpc_id" {
  value       = data.aws_vpc.vpc.id
  sensitive   = false
  description = "ID do VPC"
}

output "security_group_id" {
  value       = data.aws_security_group.security_group.id
  sensitive   = false
  description = "ID do Security Group"
}

output "public_subnet_id" {
  value       = data.aws_subnet.public_subnet.id
  sensitive   = false
  description = "ID da primeira subnet pública"
}
