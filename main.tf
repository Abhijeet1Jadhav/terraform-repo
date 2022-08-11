provider "aws" {
 access_key = "AKIA6OEYWF3UTM6XG4J4"
 secret_key = "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"
 region = "ap-south-1"
}

resource "aws_instance" "webserver1" {
ami = "ami-07eaf27c7c4a884cf"
instance_type = "t2.micro"
}
