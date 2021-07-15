# resource "aws_s3_bucket" "test_buckets" {
#   acl = "private"

#   for_each = {
#     "devotedone"  = "cryptoddds"
#     "stag" = "vaultddds"
#     "prod" = "housedddds"
#     "qa"   = "testitdddds"
#   }

#   bucket = "${each.key}-${each.value}"

#   tags = {
#     "env"     = each.key
#     "key-val" = each.value
#   }

# }