variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_cidr" {
  description = "The CIDR Block for the VPC"
  default = "172.16.0.0/19"
}

variable "vpc_name_tag" {
  default = "Prod-VPC"
}

variable "public_subnet_1_cidr" {
  default = "172.16.0.0/23"
}

variable "public_subnet_2_cidr" {
  default = "172.16.2.0/23"
}

variable "private_subnet_1_cidr" {
  default = "172.16.4.0/23"
}

variable "private_subnet_2_cidr" {
  default = "172.16.6.0/23"
}
