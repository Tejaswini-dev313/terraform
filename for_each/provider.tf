terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }

  backend "s3" {
    bucket = "devops-teju-practice"
    key   = "for-each-demo"
    region = "us-east-1"
    dynamodb_table = "devops-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}