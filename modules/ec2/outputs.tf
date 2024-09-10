output "public_dns" {
  value       = data.aws_instance.ec2.public_dns
  sensitive   = false
  description = "DNS público do EC2"
}

output "public_ip" {
  value = data.aws_instance.ec2.public_ip
  sensitive = false
  description = "IP público do EC2"
}
