
# terraform backend creation

terraform {
  backend "s3" {
    bucket         = "statefile-bucket02dbo"
    key            = "terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "state-locking2"
  }
}
