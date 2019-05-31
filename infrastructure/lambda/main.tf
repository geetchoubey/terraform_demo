resource "aws_lambda_function" "demo_function" {
  function_name = "my-dummy-function"
  handler = "index.handler"
  role = "${var.IAM_LAMBDA_ARN}"
  filename = "${var.API_DIR}"
  source_code_hash = "${base64sha256(file("terraform_demo-api.zip"))}"
  runtime = "nodejs8.10"
}