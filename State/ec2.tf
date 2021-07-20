
resource "aws_instance" "test-ins" {
  ami           = data.aws_ami.amxlinux.id
  instance_type = "t2.micro"
  key_name      = "terraform-key"


  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -yum
    sudo yum install -y httpd
    sudo service httpd start
    sudo systemctl enable httpd
    echo "<h1> Welcome to the Hell! Infra created terrafrom in eu-central-1<h1>" > /var/www/html/index.html
    EOF

  tags = {
    "Name" = "my-instance"
  }

  vpc_security_group_ids = [aws_security_group.custom_fw_rules.id]

}