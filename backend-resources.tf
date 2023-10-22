#This Configuration file is creating terraform state backend 

# AWS S3 Bucket Creation
resource "aws_s3_bucket" "statefile-bucket2" {
  bucket = var.state_bucket_name
  tags = {
    Name        = "${var.myregion}-${var.state_bucket_name}"
    Environment = "${var.environment}"
  }
}

resource "aws_s3_bucket_ownership_controls" "ownership-control1" {
  bucket = aws_s3_bucket.statefile-bucket2.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "access-block1" {
  bucket = aws_s3_bucket.api_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


#Assigning ACL permission for AWS S3 Bucket 
resource "aws_s3_bucket_acl" "state_bucket_acl" {
  bucket = aws_s3_bucket.statefile-bucket2.id
  acl    = "private"
  depends_on = [aws_s3_bucket_ownership_controls.ownership-control1,
  aws_s3_bucket_public_access_block.access-block1]
}

# AWS Dynamodb table Creation

resource "aws_dynamodb_table" "state-locking2" {
  name           = "state-locking2"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
