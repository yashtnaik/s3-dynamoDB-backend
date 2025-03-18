resource "aws_dynamodb_table" "dynamo_locking_table" {
    name = var.my_dynamo_db
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    
    attribute {
      name = "LockID"
      type = "S"
    }

    lifecycle {
      prevent_destroy = true
    }  
  
}