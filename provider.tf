terraform {
  required_providers {
    aws = {
        source = "hasicorp/aws"
        version = "5.67.0"
    }
  }
  backend "s3" {
    bucket = "matthew-main-bucket"
    key = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}