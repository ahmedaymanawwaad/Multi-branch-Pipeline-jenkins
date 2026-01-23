# main.tf
provider "aws" {
  region = "us-east-1"  # Replace with your preferred region
}

# Create a security group to allow SSH and HTTP
resource "aws_security_group" "nginx_sg" {
  name        = "nginx_sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99"  # Amazon Linux 2 (update if needed)
  instance_type = "t2.micro"
  key_name      = "my-key"                 # Replace with your key pair name
  security_groups = [aws_security_group.nginx_sg.name]

  tags = {
    Name = "Terraform-Nginx-Server"
  }
}

