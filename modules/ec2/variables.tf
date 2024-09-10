variable "key_name" {
  type = string
  default = "ec2-key-pair"
  description = "Key name of you"
}

variable "ami" {
  type        = string
  default     = "ami-0182f373e66f89c85"
  description = "AMI of your EC2"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Resources type of your EC2"
}

variable "security_group_id" {
  type        = string
  description = "IDs dos security groups to EC2 instances"
}

variable "subnet_id" {
  type        = string
  description = "ID da primeira subnet pública"
}
