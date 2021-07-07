resource "aws_iam_user" "user_list" {

    for_each = toset(["Jameson", "Andrews", "Caputre", "Fabulos"])

    name = each.key
  
}