provider "aws" {
  region = "${var.AWS_REGION}"
}

data "aws_caller_identity" "current" {}

terraform {
  backend "s3" {}
}

//module "instance" {
//  source = "./instance"
//  AMIs = "${var.AMIs}"
//  AWS_REGION = "${var.AWS_REGION}"
//  SECURITY_NAME = "${module.security_group.security_group_name}"
//  PUBLIC_KEY_PATH = "${var.PUBLIC_KEY_PATH}"
//}

//module "security_group" {
//  source = "./rule"
//}

module "iam" {
  source = "./iam"
  UI_BUCKET_NAME = "${var.UI_BUCKET_NAME}"
}

module "lambdas" {
  source = "./lambda"
  AWS_REGION = "${var.AWS_REGION}"
  IAM_LAMBDA_ARN = "${module.iam.iam_for_lambda}"
  API_DIR = "${var.API_DIR}"
}

module "frontend" {
  source = "./ui"
  UI_BUCKET_NAME = "${var.UI_BUCKET_NAME}"
  S3_BUCKET_POLICY = "${module.iam.s3_bucket_policy}"
}

module "logs" {
  source = "./log"
  AWS_FUNCTINO_NAME = "${module.lambdas.lambda_function}"
}

//resource "null_resource" "show_ip" {
//  triggers {
//    new_ip = "${module.instance.instance_ip}"
//  }
//  provisioner "local-exec" {
//    command = "echo 'Hello'"
//  }
//}