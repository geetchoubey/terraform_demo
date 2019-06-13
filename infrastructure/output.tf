//output "instance_public_ip" {
//  value = "${module.instance.instance_ip}"
//}

output "lambda_function" {
  value = "${module.lambdas.lambda_function}"
}
//
output "frontend_url" {
  value = "${module.frontend.UI_URL}"
}