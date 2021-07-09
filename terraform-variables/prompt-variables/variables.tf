variable "ec2_ami_id" {
  description = "Amazon Linux ami ID"
  type        = string

}
variable "instance_count" {
  description = "Number of instances to be provisioend"
  type        = number

}

variable "all_cidr" {
  description = "CIDR block for all internet"
  type        = string
}

variable "aws_region" {
  description = "Region where resource will be deployed"
  type        = string
}

variable "ec2_instance_type" {
  description = "ec2 instance type"
  type        = string
}