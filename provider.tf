provider "aws" {
  region = "eu-west-2"



}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

      version = "~>5.22"

    }
  }
}

# provider "aws" {
#   # Configuration options
#   region = "eu-west-2"
# }


# terraform {
#   required_version = ">= 0.14"
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = ">= 4.9.0"
#     }

#   tls = {
#     source  = "hashicorp/tls"
#     version = "3.4.0"
#   }
#   }


# }

# provider "aws" {
#   region = "eu-west-2"
# }




