output "instance_name" {
  value = "${aws_instance.my_ec2_instance.id}"
}

output "instance_ip" {
  value = "${aws_instance.my_ec2_instance.public_ip}"
}