provider "aws" {}

resource "aws_instance" "set1" {
 ami = "ami-08df646e18b182346"
 instance_type = "t2.micro"
 tags = {
  Name = "Test1"
  owner = "Abhijeet"
 }
}
