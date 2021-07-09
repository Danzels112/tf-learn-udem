resource "aws_eip" "dev-eip" {
  vpc      = true
  instance = aws_instance.my-ec2-vm.id
  # Meta Argument
  depends_on = [aws_internet_gateway.vpc-dev-igw]


}