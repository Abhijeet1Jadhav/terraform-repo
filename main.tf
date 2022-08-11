provider "aws" {
 access_key = "AKIA6OEYWF3U6HHBTAPU"
 secret_key = "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"
 region = "ap-south-1"
}

resource "aws_instance" "webserver1" {
ami = "ami-07eaf27c7c4a884cf"
instance_type = "t2.micro"
}
