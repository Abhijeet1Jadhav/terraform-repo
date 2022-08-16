provider "aws" {}

resource "aws_instance" "set1" {
 id = "i-0a379333074222db3"
 ami = "ami-08df646e18b182346"
 instance_type = "t2.micro"
 tags = {
  Name = "Test1"
  owner = "Abhijeet"
	}
 security_groups = "sg-0be2426bd6b3f0ee0"
}
