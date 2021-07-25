resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amazonlinux.id
  instance_type = var.instance_type
  key_name               = "terraform-key"
  
  vpc_security_group_ids = [aws_security_group.custom_fw_rules.id]

  user_data = file("apache-install.sh")
  tags = {
    "Name" = "vm-${terraform.workspace}-0"
  }

connection {
  type = "ssh"
  host = self.public_ip
  user = "ec2-user"
  password = ""
  private_key = file("terraform-key.pem")
  
}

provisioner "file" {
  content = "ami used: ${self.ami}"
  destination = "/tmp/file.log"

}
provisioner "file" {
  content = "web.html"
  destination = "/tmp/web.html"
}

}