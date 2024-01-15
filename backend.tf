terraform {
  backend "s3" {
    bucket         = "ab-demo1"
    key            = "${terraform.workspace}/terraform.tfstate"
    region         = "us-east-2"
  }
}
