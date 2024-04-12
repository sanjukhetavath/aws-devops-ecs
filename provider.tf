terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-southeast-2"
}

 backend "s3" {
    bucket  = "asgterraformremotestate"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
