variable "instance_name" {
  description = "Name of the instance to be created"
  default = "awsbuilder-demo"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "subnet_id" {
  description = "The VPC subnet the instance(s) will be created in"
  default = "subnet-0057972af167551f0"
}

variable "ami_id" {
  description = "The AMI to use"
  default = "ami-09d56f8956ab235b3"
}

variable "number_of_instances" {
  description = "number of instances to be created"
  default = 1
}


variable "ami_key_pair_name" {
  default = "morpheus-key"
}

variable "access_key" {
  type = "string"
}

variable "secret_key" {
  type = "string"
}

module "tfvars" {
  source = "tfvars/profile/cloud/ADM-AWS/variables"
  access_key = var.access_key
  secret_key = var.secret_key
}