/*
By default terraform would destroy the resource before creating it. Using lifecycle argument with create_before_destroy you can
change the default behaviour. By this new resource is provisioned before old one is created. See the example with aws ec2 inst-
ance below.
 */
resource "aws_instance" "test-vm" {
  ami               = "ami-089b5384aac360007"
#availability_zone = "eu-central-1a"
  availability_zone = "eu-central-1b"
  instance_type     = "t2.micro"


  tags = {
    "Name" = "testing-lifecycle-meta"
  }

  lifecycle {
    # create_before_destroy = true # Used in 1st example of lifecycle block.create_before_destroy 
    # prevent_destroy = true
    ignore_changes = [
      tags, instance_type
    ]
  }

}