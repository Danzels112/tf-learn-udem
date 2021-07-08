resource "aws_instance" "test-vm" {
  ami               = "ami-089b5384aac360007"
#availability_zone = "eu-central-1a"
  availability_zone = "eu-central-1b"
  instance_type     = "t2.micro"


  tags = {
    "Name" = "testing-lifecycle-meta"
  }

  lifecycle {
    create_before_destroy = true
  }

}