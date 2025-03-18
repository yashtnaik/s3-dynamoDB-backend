resource "aws_s3_bucket" "bucket_for_statelock" {
    bucket = my-bucket-backend

    lifecycle {
      prevent_destroy = true
    }
}

resource "aws_s3_bucket_versioning" "version-control" {
    bucket = aws_s3_bucket.bucket_for_statelock.bucket
    versioning_configuration {
      status = "Enabled"
    }

    lifecycle {
      prevent_destroy = true
    }  
}

resource "aws_s3_bucket_server_side_encryption_configuration" "SSE-s3-bucket" {
    bucket = aws_s3_bucket.bucket_for_statelock.bucket
    rule {
        apply_server_side_encryption_by_default {
          sse_algorithm = "AES-256"
        }
      }

    lifecycle {
      prevent_destroy = true
    }  
}
