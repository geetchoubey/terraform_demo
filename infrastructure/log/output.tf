output "LAMBDA_LOG_ARN" {
  value = "${aws_cloudwatch_log_group.dummy_log.arn}"
}