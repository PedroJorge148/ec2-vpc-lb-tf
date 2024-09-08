variable "ami" {
  type        = string
  default     = "ami-0182f373e66f89c85"
  description = "AMI do EC2"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Recursos da instância EC2"
}

variable "security_group_id" {
  type        = string
  description = "IDs dos security groups para instância EC2"
}

variable "subnet_id" {
  type        = string
  description = "ID da primeira subnet pública"
}
