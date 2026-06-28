terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "sowji-selfhosted-runner-bucket-2026"

  tags = {
    Name        = "sowji-bucket"
    Environment = "dev"
    CreatedBy   = "GitHub-Actions-OIDC"
  }
}
