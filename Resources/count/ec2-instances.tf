resource "aws_instance" "web-server" {
  ami           = "ami-05f7491af5eef733a"
  instance_type = "t2.micro"
  count         = 4

  tags = {
    "Name" = "web-${count.index}"
    "env"  = "val"
  }

}