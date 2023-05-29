provider "aws" {
  region = "us-east-1"
  access_key = "${access_key}"
  secret_key = "${secret_key}"
}

resource "aws_instance" "ec2_instance" {
  ami = "${var.ami_id}"
  count = "${var.number_of_instances}"
  subnet_id = "${var.subnet_id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.ami_key_pair_name}"
} 