# https://www.youtube.com/watch?v=ASIbx9XFOfQ&list=PLoTqDbTIad4v3ItNwvOPbWJ_1Obz6hDxB&index=27

import json

import boto3

s3_client = boto3.client("s3")
S3_BUCKET = "eu-west-2-lambdabucketapi2"


def lambda_handler(event, context):
    object_key = "sample.txt"
    file_content = (
        s3_client.get_object(Bucket=S3_BUCKET, Key=object_key)["Body"]
        .read()
        .decode("utf-8")
    )
    print(file_content)

    return {"statusCode": 200, "body": json.dumps(file_content)}
