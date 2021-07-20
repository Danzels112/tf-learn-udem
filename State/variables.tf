# variable "ec2_ami_id" {
#   description = "Amazon Linux ami ID"
#   type        = string

# }
variable "all_cidr" {
  description = "CIDR block for all internet"
  type        = string
  default     = "0.0.0.0/0"
}

variable "aws_region" {
  description = "Region where resource will be deployed"
  type        = string
  default     = "eu-central-1"
}

variable "ec2_instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}