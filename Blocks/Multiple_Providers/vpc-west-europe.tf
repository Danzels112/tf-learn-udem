resource "aws_vpc" "vpc-eu-west" {
    cidr_block = "10.0.0.0/16"
    provider = aws.aws-west-1 # reffering to alias from providers

    tags = {
      "env" = "test"
    }
  
}