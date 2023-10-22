# https://www.youtube.com/watch?v=ASIbx9XFOfQ&list=PLoTqDbTIad4v3ItNwvOPbWJ_1Obz6hDxB&index=26


# https://github.com/KanchanSoni16/terraform-s3-lambda-apigatway

variable "bucket_name" {
  description = "this is the bucket name it has to be globally unique"
}

variable "myregion" {}
variable "environment" {}
variable "acl" {}
variable "object_key" {}
variable "object_source" {}
variable "object_acl" {}
variable "lambda_zip_location" {}
variable "source_file" {}
variable "function_name" {}
variable "lambda_role_name" {}
variable "assume_role_policy" {}
variable "lambda_policy_name" {}
variable "policy" {}
variable "runtime" {}
variable "api_role_name" {}
variable "api_policy_name" {}
variable "api_assume_role_policy" {}
variable "api_policy" {}
variable "api_description" {}
variable "api_name" {}
variable "endpoint_types" {}
variable "path_part" {}
variable "http_method" {}
variable "method_authorization" {}
variable "integration_http_method" {}
variable "integration_type" {}
variable "status_code" {}
variable "stage_name" {}
variable "apigw_principal" {}
variable "accountId" {}
variable "state_bucket_name" {

}
