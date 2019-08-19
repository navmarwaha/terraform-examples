resource "aws_subnet" "public-subnet-1" {
  vpc_id = "${aws_vpc.prod-vpc.id}"
  cidr_block = "${var.public_subnet_1_cidr}"
  availability_zone = "${var.aws_region}a"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-1a"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id = "${aws_vpc.prod-vpc.id}"
  cidr_block = "${var.public_subnet_2_cidr}"
  availability_zone = "${var.aws_region}b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-1b"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id = "${aws_vpc.prod-vpc.id}"
  cidr_block = "${var.private_subnet_1_cidr}"
  availability_zone = "${var.aws_region}a"

  tags = {
    Name = "private-subnet-1a"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id = "${aws_vpc.prod-vpc.id}"
  cidr_block = "${var.private_subnet_2_cidr}"
  availability_zone = "${var.aws_region}b"

  tags = {
    Name = "private-subnet-1b"
  }
}
