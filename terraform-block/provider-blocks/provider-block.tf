terraform {
    required_version = "~> 1.0.0"

    required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 3.1"  # ~> means rightmost version, e.g -  3.0 allows from 3.0 to 3.99
      }
    }
}
provider "aws" {
    region  = "eu-central-1"
    # default profile, using the aws configure configurations path=$HOME/.aws/credentials
    profile = "default"
    # shared credentials files, goes along with above
    # shared_credentials_file = "path to the /credentials"


    # Static credentials below - NOT RECOMMENDED
    # access_key = "your-access-key"
    # secret_key = "your secret-key"
    

  
}