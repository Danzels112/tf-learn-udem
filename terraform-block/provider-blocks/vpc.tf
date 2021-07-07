resource "aws_vpc" "my_vpc" {
    cidr_block = "10.64.8.0/24"

    tags = {
      "env" = "test"
    }
  
}