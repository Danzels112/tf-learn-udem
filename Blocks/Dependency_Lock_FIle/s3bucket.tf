/*
`random_pet` resource generates a string of random `pet` name, this serves as example when creating bucket below as it is mandatory to have UNIQUE bucket name.
 */

resource "random_pet" "petname" {
    length = 3
    separator = "-"
  
}

# Example of aws s3 bucket, the bucket name is assigned from random resource created above.

resource "aws_s3_bucket" "my_storage" {
    bucket = random_pet.petname.id
    force_destroy = true
  
}