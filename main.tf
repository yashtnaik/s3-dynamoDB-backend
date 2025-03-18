module "create_s3" {
    source = "./Modules/create_s3"
    bucket_name = var.root_bucket_name
}

module "create_dynamoDB" {
    source = "./Modules/create_dynamoDB"
    dynamodb_table_name = var.root_dynamo_name
  
}