terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.16, < 5.0"
    }
  }
  required_version = ">= 1.2.0"
}   

#terraform { cloud { organization = "jadhavabhijeet640" workspaces { name = "demo-workspace" } } }

provider "aws" {
  access_key = "AKIAVYQ4LEAU7OE2AXDV"
  secret_key = "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"
  region     = "us-east-2"
}

resource "aws_instance" "demo" {
  ami = var.ami_id
  instance_type = var.instance_type
}
variable "instance_type" {}
variable "ami_id" {}

output "arn" {
  value = aws_instance.demo.arn
}

output "public_ip" {
  value = aws_instance.demo.public_ip
}
