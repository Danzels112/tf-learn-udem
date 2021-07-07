
#  Terraform Blokc
terraform {
    # required_version = "~> 0.14"
  required_providers{
      aws = {
          source = "hashicorp/aws"
      }
   }
}

#  Provider Block
provider "aws"{
    profile = "default"
    region  = "eu-central-1"
}

#  Resource Block
resource "aws_instance" "ec2demo"{
    ami           = "ami-05f7491af5eef733a"
    instance_type = "t2.micro"
}

/* 
There are more Block types available:
- Input variable blocks
- Output variable blocks
- Local values blocks
- Data source blocks
- Modules blocks
*/