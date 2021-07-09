locals {
  bucket_name = "${var.instance_environment}_${var.instance_size}"
}

resource "aws_s3_bucket" "storage_for_files" {
    bucket = local.bucket_name
    force_destroy = false

  
}