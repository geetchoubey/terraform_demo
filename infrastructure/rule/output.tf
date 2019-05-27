output "security_group_name" {
  value = "${aws_security_group.my_http_sec_group.name}"
}