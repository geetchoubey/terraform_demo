resource "aws_iam_role" "iam_for_lambda" {
  name = "iam_for_lambda"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com",
        "Service": "events.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "lambda_policy" {
  depends_on = ["aws_iam_role.iam_for_lambda"]
  role = "${aws_iam_role.iam_for_lambda.id}"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:PutLogEvents",
                "logs:CreateLogGroup"
            ],
            "Resource": [
                "*"
            ]
        }
    ]
}
EOF
}

data "aws_iam_policy_document" "static_bucket_policy" {
  statement {
    sid = "PublicReadForGetBucketObjects"
    effect = "Allow"
    principals {
      identifiers = ["*"]
      type = "AWS"
    }
    actions = ["s3:GetObject"]
    resources = ["arn:aws:s3:::${var.UI_BUCKET_NAME}/*"]
  }
}