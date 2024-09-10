resource "aws_alb" "name" {
  name               = var.alb_name
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb_security_group.id]
  subnets            = [for subnet in aws_subnet.public : subnet.id]

  tags = {
    Environment = "${terraform.workspace}"
  }
}
