variable "ami_id" {
    description = "AMI ID of Amazon Linux"
    type        = string
    default     = "ami-089b5384aac360007"
}

variable "vm_instance_type" {
    description = "Size/type of virtual machine"
    type        = list
    default     = ["t2.micro", "t2.small", "t2.small"]
}

variable "all_cidr" {
    description = "CIDR FOR ALL INTERNET"
    type        = string
    default     = "0.0.0.0/0"
}