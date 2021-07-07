resource "aws_vpc" "vpc-dev" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "vpc-dev"
  }
}

resource "aws_subnet" "vpc-dev-public-subnet-1" {
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.vpc-dev.id
  availability_zone       = "eu-central-1a"
}

resource "aws_internet_gateway" "vpc-dev-igw" {
  vpc_id = aws_vpc.vpc-dev.id
}

resource "aws_route_table" "dev-rb" {
  vpc_id = aws_vpc.vpc-dev.id
}

resource "aws_route" "vpc-dev-public-rout" {
  route_table_id         = aws_route_table.dev-rb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.vpc-dev-igw.id
}

resource "aws_route_table_association" "vpc-dev-public-route-associate" {
  subnet_id      = aws_subnet.vpc-dev-public-subnet-1.id
  route_table_id = aws_route_table.dev-rb.id

}

resource "aws_security_group" "dev-vpc-sg" {
  vpc_id      = aws_vpc.vpc-dev.id
  name        = "dev-vpc-default-sg"
  description = "DEV VPC default security group"

  ingress {
    description = "Allow Port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow Port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    description = "Allow all IP and ports outbound"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}


    