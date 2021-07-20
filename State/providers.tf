terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.aws_region

}

terraform {
  backend "s3" {
    bucket = "state-bucket-dterraform"
    key    = "dev/terraform.tfstate"
    region = "eu-central-1"

    #  It is also possible to enable the state locking feature of tfstate file
    # dynamodb_table = <tableName>
  }
}
