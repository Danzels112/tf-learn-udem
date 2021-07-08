resource "aws_instance" "test-ins" {
  ami           = var.ec2_ami_id
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  count         = var.instance_count
  user_data     = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1> Welcome D <h1>" > /var/www/html/index.html
    EOF

  tags = {
    "Name" = "my-instance"
  }

  vpc_security_group_ids = [aws_security_group.custom_fw_rules.id]

}