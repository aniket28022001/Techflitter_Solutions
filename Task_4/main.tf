provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "lamp" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.lamp_sg.name]

  tags = {
    Name = "LAMP-Instance"
  }
}

resource "aws_security_group" "lamp_sg" {
  name        = "lamp-sg"
  description = "Allow inbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
