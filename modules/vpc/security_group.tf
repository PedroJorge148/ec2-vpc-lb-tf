resource "aws_security_group" "security_group" {
  vpc_id = aws_vpc.main.id

  ingress {
    from_port   = 3333
    to_port     = 3333
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permitir tráfego HTTP de qualquer IP
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Permitir SSH de qualquer IP (ajustar conforme a necessidade)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          # Todos os protocolos
    cidr_blocks = ["0.0.0.0/0"] # Permitir todo o tráfego de saída
  }

  tags = {
    Name = "security-group-challenge"
  }

  depends_on = [aws_vpc.main]
}