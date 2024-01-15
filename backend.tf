terraform {
  backend "s3" {
    bucket         = "ab-demo1"
    key            = "terraform.tfstate"
    region         = "us-west-2"
  }
}
