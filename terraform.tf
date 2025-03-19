terraform {
  backend "s3" {
    bucket = "s3-bucket-backend-yashtnaik"
    key = "dynamoDB/terraform.tfstate"
    use_lockfile = true
    region = "ap-south-1"
    dynamodb_table = "dynamanoDB_for_backend"
    encrypt = true 
  }
}