resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amazonlinux.id
  instance_type = var.instance_type
  key_name      = "terraform-key"

  vpc_security_group_ids = [aws_security_group.custom_fw_rules.id]

  user_data = file("apache-install.sh")
  tags = {
    "Name" = "vm-${terraform.workspace}-0"
  }
}

resource "time_sleep" "wait_90_seconds" {
  depends_on      = [aws_instance.my-ec2-vm]
  create_duration = "90s"
}

resource "null_resource" "sync1-app" {
  depends_on = [time_sleep.wait_90_seconds]
  triggers = {
    always-update = timestamp()
  }

  connection {
    type        = "ssh"
    host        = aws_instance.my-ec2-vm.public_ip
    user        = "ec2-user"
    password    = ""
    private_key = file("terraform-key.pem")

  }
  provisioner "file" {
    content     = "ami used: ${aws_instance.my-ec2-vm.ami}"
    destination = "/tmp/file.log"

  }
}



# provisioner "file" {
#   content = "web.html"
#   destination = "/tmp/web.html"
# }
# provisioner "remote-exec" {
#   inline = [
#     "sleep 120"
#     "echo wasssup >> /tmp/file.log"
#   ]

# }