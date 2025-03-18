module "create_s3" {
    source = "/modules/create_s3"
    bucket_name = var.root_bucket_name
}

module "create_dynamoDB" {
    source = "/modules/create_dynamoDB"
    dynamodb_table_name = var.root_dynamo_name
  
}