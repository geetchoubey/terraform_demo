output "iam_for_lambda" {
  value = "${aws_iam_role.iam_for_lambda.arn}"
}

output "s3_bucket_policy" {
  value = "${data.aws_iam_policy_document.static_bucket_policy.json}"
}