terraform {
  required_version = "1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }

  backend "s3" {
    bucket = "tfstate-prod-bucket-assignment-ap-southeast-1"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}