resource "aws_cloudwatch_log_group" "dummy_log" {
  name = "/aws/lambda/${var.AWS_FUNCTINO_NAME}"
  retention_in_days = 1
}