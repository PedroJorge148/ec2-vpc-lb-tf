resource "aws_instance" "ec2" {
  ami                         = var.ami
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${var.security_group_id}"]

  tags = {
    Name = "ec2-instance-challenge"
  }
}
