# terraform {
#   required_version = "~> 1.0.0"
# }
terraform {
    required_version = "~> 1.0.0"

    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.1"  # ~> means rightmost version, e.g -  3.0 allows from 3.0 to 3.99
      }
      random = {
          source = "hashicorp/random"
          version = "~> 3.0"
      }
    }
}