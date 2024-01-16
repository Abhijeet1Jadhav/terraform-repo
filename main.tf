terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.16, < 5.0"
    }
  }
  required_version = "1.0.0"
}   

#terraform { cloud { organization = "jadhavabhijeet640" workspaces { name = "demo-workspace" } } }

provider "aws" {
  #access_key = "AKIAVYQ4LEAU7OE2AXDV"
  #secret_key = "SEH6xlH5HIUwpr4fpTNsUmn9353AHvO4hDhdmUhq"
  region     = "us-east-2"
}

resource "aws_security_group" "example" {
  name        = "example-security-group"
  description = "Example Security Group for SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.1/32"]  # Replace with your specific IP range
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

resource "aws_instance" "demo" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_group = aws_security_group.example.example-security-group
}
variable "instance_type" {}
variable "ami_id" {}

output "arn" {
  value = aws_instance.demo.arn
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}
