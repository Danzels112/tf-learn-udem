variable "ec2_ami_id" {
  description = "Amazon Linux ami ID"
  type        = string
  default     = ""

}
variable "instance_count" {
  description = "Number of instances to be provisioend"
  type        = number
  default     = 1

}

variable "all_cidr" {
  description = "CIDR block for all internet"
  type        = string
  default     = "0.0.0.0/0"
}