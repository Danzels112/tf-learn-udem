output "aws_instance_name" {
  value = aws_instance.test-ins.tags["Name"]

}

output "public_ip" {
  value = aws_instance.test-ins.public_ip
}
output "private_ip" {
  value = aws_instance.test-ins.private_ip

}
output "security_groups" {
  value = aws_instance.test-ins.security_groups
}
output "public_dns" {
  value = "https://${aws_instance.test-ins.public_dns}"

}
output "test_vpc" {
  value = data.aws_vpc.test_vpc.id
}

# It is also possible to supress the output and mark it with sensetivity statement. E.g below:
# output "public_dns" {
#   value = "https://${aws_instance.test-ins.public_dns}"
#   sensitive = true
# }