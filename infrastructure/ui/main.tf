resource "aws_s3_bucket" "static-web-bucket" {
  bucket        = "${var.UI_BUCKET_NAME}"
  acl           = "public-read"
  force_destroy = true
  policy        = "${var.S3_BUCKET_POLICY}"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  versioning {
    enabled = false
  }
}