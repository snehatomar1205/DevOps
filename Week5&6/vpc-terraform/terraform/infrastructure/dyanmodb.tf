resource "aws_dynamodb_table" "name" {
  name = "${var.env}-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "userID"
  attribute {
    name = "userID"
    type = "S"
  }
  tags = {
    name = "${var.env}-table"
    environment = var.env
  }
}