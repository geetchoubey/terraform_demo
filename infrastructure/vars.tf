variable "AWS_REGION" {
  default = "us-west-2"
}
variable "AMIs" {
  type = "map"
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
  }
}

variable "STATE_BUCKET_NAME" {
  default = "geet-tf-state-bucket"
}
variable "API_DIR" {}
variable "UI_DIR" {}
variable "API_ARTIFACT" {}
variable "UI_BUILD" {}

variable "UI_BUCKET_NAME" {}
variable "API_BUCKET_NAME" {}

variable "AWS_ACCESS_KEY_ID" {}
variable "AWS_SECRET_ACCESS_KEY" {}