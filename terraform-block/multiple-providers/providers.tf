terraform {
    required_version = "~> 1.0.0"

    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
    }
}

provider "aws" {
    region = "eu-central-1"
    profile = "default"
  
}

provider "aws" {
    region = "eu-west-1"
    profile = "default"
    alias = "aws-west-1"  # for refference.
  
}