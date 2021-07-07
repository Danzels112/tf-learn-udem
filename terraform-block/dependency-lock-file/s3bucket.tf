resource "random_pet" "petname" {
    length = 3
    separator = "-"
  
}

resource "aws_s3_bucket" "my_storage" {
    bucket = random_pet.petname.id
    force_destroy = true
  
}