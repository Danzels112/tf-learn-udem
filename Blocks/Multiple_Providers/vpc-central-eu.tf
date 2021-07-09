resource "aws_vpc" "vpc-eu-central" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "env" = "test"
    }
  
}