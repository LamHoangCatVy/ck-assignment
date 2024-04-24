terraform {
  required_version = "1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-dev-bucket-assignment"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}