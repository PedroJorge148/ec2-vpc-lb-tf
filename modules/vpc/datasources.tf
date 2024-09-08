data "aws_vpc" "vpc" {
  id = aws_vpc.main.id
}

data "aws_security_group" "security_group" {
  id = aws_security_group.security_group.id
}

data "aws_subnet" "public_subnet" {
  id = aws_subnet.public_subnets[0].id
}