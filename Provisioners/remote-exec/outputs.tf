output "ec2_instance_publicIP" {
    description = "Public IP address of ec2 instance"
    value = aws_instance.my-ec2-vm.*.public_ip
  
}

output "ec2_publicdn" {
    description = "Public DNS URL of ec2 instance"
    value = aws_instance.my-ec2-vm.*.public_dns
  
}