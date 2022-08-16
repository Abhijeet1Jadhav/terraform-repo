provider "aws" {
 access_key = "AKIA6OEYWF3U6HHBTAPU"
 secret_key = "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"
 region = "ap-south-1"
}

resource "aws_instance" "set1" {
 ami = "ami-08df646e18b182346"
 instance_type = "t3.large"
 tags = {
  Name = "Test1"
	}
}
