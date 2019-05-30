output "UI_URL" {
  value = "${aws_s3_bucket.static-web-bucket.website_endpoint}"
}