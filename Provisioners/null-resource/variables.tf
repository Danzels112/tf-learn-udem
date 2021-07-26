variable "aws_region" {
  description = "Region in which resources will be created"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"

}
variable "all_cidr" {
  description = "CIDR range"
  type        = string
  default     = "0.0.0.0/0"
}