
/* Another approach to uses for_each is to provide values in a list and specify parameter as `each.key` */

resource "aws_iam_user" "user_list" {

    for_each = toset(["Jameson", "Andrews", "Caputre", "Fabulos"])

    name = each.key
  
}