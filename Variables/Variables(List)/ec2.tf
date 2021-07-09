resource "aws_instance" "test-ins" {
  ami           = var.ami_id
  instance_type = var.vm_instance_type[2]
  key_name      = "terraform-key"
  count         = 1
  user_data     = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo service httpd start
    sudo systemctl enable httpd
    echo "<h1> Welcome to the Hell! Infra created terrafrom in eu-central-1<h1>" > /var/www/html/index.html
    EOF

  tags = var.instance_tags
  vpc_security_group_ids = [aws_security_group.custom_fw_rules.id]

}