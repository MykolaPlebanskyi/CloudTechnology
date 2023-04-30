resource "aws_dynamodb_table" "db" {
  name = module.labels.id
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

}

module "labels" {
  source  = "git::https://github.com/cloudposse/terraform-null-label.git?ref=0.24.1"
  context = var.context
  name    = var.name
}

