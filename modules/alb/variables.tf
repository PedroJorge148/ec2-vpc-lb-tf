variable "alb_name" {
  type = string
  default = "alb-challenge"
  description = "Load balancer name"
}

variable "vpc_id" {
  type = string
  description = "The ID of the VPC previosly created"
}