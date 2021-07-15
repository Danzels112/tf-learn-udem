variable "ami_id" {
    description = "AMI ID of Amazon Linux"
    type        = string
    default     = "ami-089b5384aac360007"
}

# variable "vm_instance_type" {
#     description = "Size/type of virtual machine"
#     type        = list
#     default     = ["t2.micro", "t2.small", "t3.small"]
# }

variable "vm_instance_type" {
    description = "Size/types of virtual machines"
    type        = map(string)
    default     = {
        "small" : "t2.micro"
        "medium": "t2.small"
        "large" : "t3.small"
    }
}

variable "all_cidr" {
    description = "CIDR FOR ALL INTERNET"
    type        = string
    default     = "0.0.0.0/0"
}

variable "instance_tags" {
    description = "Tags for VM"
    type        = map(string)
    default = {
        "Name" = "test-VM"
        "MU"   = "finance"
    }
}