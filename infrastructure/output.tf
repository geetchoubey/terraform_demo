//output "instance_public_ip" {
//  value = "${module.instance.instance_ip}"
//}

output "lambda_function" {
  value = "${module.lambdas.lambda_function}"
}