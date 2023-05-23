terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.64.0"
    }
  }

  backend "s3" {
    bucket         = "timing-backend-s3"
    key            = "vpc"
    region         = "ap-south-1"
    dynamodb_table = "timing-lock"
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  alias  = "us-east-1-cdn"

}
