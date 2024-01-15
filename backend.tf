terraform {
  backend "s3" {
    bucket         = "ab-demo1"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
  }
}
