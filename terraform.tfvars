# https://www.youtube.com/watch?v=ASIbx9XFOfQ&list=PLoTqDbTIad4v3ItNwvOPbWJ_1Obz6hDxB&index=26

# https://github.com/KanchanSoni16/terraform-s3-lambda-apigatway

bucket_name             = "lambdabucketapi2"
myregion                = "eu-west-2"
environment             = "Dev"
acl                     = "public-read-write"
object_key              = "sample.txt"
object_source           = "Object/sample.txt"
object_acl              = "public-read-write"
lambda_zip_location     = "output/lambda_api_function.zip"
source_file             = "lambda_api_function.py"
function_name           = "AWS_S3_API_Lambda_Function"
lambda_role_name        = "api_role"
assume_role_policy      = "iam/lambda-assume-policy.json"
lambda_policy_name      = "api_policy"
policy                  = "iam/lambda_policy.json"
runtime                 = "python3.7"
api_role_name           = "apigatway-role"
api_policy_name         = "apigatway-policy"
api_assume_role_policy  = "iam/apigateway-assume-policy.json"
api_policy              = "iam/apigateway-policy.json"
api_description         = "Created by Terraform code"
api_name                = "rest_api"
endpoint_types          = "REGIONAL"
path_part               = "rest_api_stage"
http_method             = "GET"
method_authorization    = "NONE"
integration_http_method = "POST"
integration_type        = "AWS"
status_code             = "200"
stage_name              = "rest_api_stage"
apigw_principal         = "apigateway.amazonaws.com"
accountId               = "855044211543"
state_bucket_name       = "statefile-bucket03dbo"


