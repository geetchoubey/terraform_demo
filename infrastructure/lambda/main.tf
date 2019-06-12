resource "aws_lambda_function" "demo_function" {
  function_name = "my-dummy-function"
  handler = "index.handler"
  role = "${var.IAM_LAMBDA_ARN}"
  s3_bucket = var.API_BUCKET_NAME
  s3_key = var.API_ARTIFACT
  runtime = "nodejs8.10"
}
