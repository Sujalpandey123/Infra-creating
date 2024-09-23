terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

module "s3_bucket" {
  source      = "./s3_bucket"  # Path to the module
  bucket_name = "my-unique-bucket-name"  # Change this to your unique bucket name
}