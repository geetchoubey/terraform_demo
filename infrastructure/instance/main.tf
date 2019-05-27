resource "aws_instance" "my_ec2_instance" {
  ami = "${lookup(var.AMIs, var.AWS_REGION)}"
  instance_type = "t2.micro"
  user_data = "${file("./instance/user_data.sh")}"
  security_groups = ["${var.SECURITY_NAME}"]
  key_name = "${aws_key_pair.instance_ssh_key.id}"
}
resource "aws_key_pair" "instance_ssh_key" {
  public_key = "${file(var.PUBLIC_KEY_PATH)}"
}