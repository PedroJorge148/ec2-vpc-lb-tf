output "public_dns" {
  value = data.aws_instance.ec2.public_dns
  sensitive = false
  description = "DNS público do EC2"
}