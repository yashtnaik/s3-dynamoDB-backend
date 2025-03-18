terraform {
  backend "aws" {
    bucket = var.root_bucket_name
    key = "dynamoDB/terraform.tfstate"
    use_lockfile = true
    region = "ap-south-1"
    dynamodb_table = var.root_dynamo_name
    encrypt = true

    
  }
}