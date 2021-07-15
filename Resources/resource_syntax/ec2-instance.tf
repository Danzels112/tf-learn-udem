resource "aws_instance" "my_instance" {
  ami               = "ami-05f7491af5eef733a"
  instance_type     = "t2.micro"
  availability_zone = "eu-central-1b"
  tags = {
    "Name" = "test-instance"
    "tag1" = "test-tag"
  }
}