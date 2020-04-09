provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_vpc" "prod-vpc" {
  cidr_block                       = "${var.vpc_cidr}"
  enable_dns_hostnames             = "true"
  assign_generated_ipv6_cidr_block = "true"

  tags = {
    Name = "${var.vpc_name_tag}"
  }
}
