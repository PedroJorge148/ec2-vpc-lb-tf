/** 
* You can create your ssh key using: ssh-keygen -f key_pair
* And you can connect using: ssh -i "key-pair" ec2-user@<public_dns or public_ip>
*/
resource "aws_key_pair" "key_pair" {
  key_name   = var.key_name
  public_key = file("./key_pair.pub") # it's root directory, not ./modules/ec2
}

resource "aws_instance" "ec2" {
  ami                         = var.ami
  subnet_id                   = var.subnet_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = ["${var.security_group_id}"]

  key_name = aws_key_pair.key_pair.key_name

  tags = {
    Name = "ec2-instance-challenge"
  }
}
