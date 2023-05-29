terraform {
  required_providers {
    aws = {
      source =  "hashicorp/aws"
      version = "4.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  shared_credentials_files = ["tfvars/profile/cloud/ADM-AWS/variables"]
}

resource "aws_instance" "ec2_instance" {
  ami = "${var.ami_id}"
  count = "${var.number_of_instances}"
  subnet_id = "${var.subnet_id}"
  instance_type = "${var.instance_type}"
  key_name = "${var.ami_key_pair_name}"
} 