variable "db_username" {
    description = "aws RDS DB admin username"
    type = string
    sensitive = true
}

variable "db_password" {
    description = "aws RDS DB password"
    type = string
    sensitive = true
}