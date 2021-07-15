terraform {
    required_version = "~> 1.0.0"

    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.0"
      }
    }
}

/*
Even though the provider is "aws" in both blocks below, it is possible to create two equal resources, but with different parameters. In this case, regions are different.
 */

provider "aws" {
    region = "eu-central-1"
    profile = "default"
  
}

# `alias` is the parameter which can be used as refference when creating actual resources. For use of `alias` reffer to `vpc-west-europe.tf` file.

provider "aws" {
    region = "eu-west-1"
    profile = "default"
    alias = "aws-west-1"  # for refference.
  
}