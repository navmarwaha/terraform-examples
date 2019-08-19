resource "aws_route_table" "prod-public-rt" {
  vpc_id = "${aws_vpc.prod-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.prod_igw.id}"
  }

  tags = {
    Name = "Prod-Public-RT"
  }
}


resource "aws_route_table" "prod-private-rt-1" {
  vpc_id = "${aws_vpc.prod-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.prod_ngw_1.id}"
  }

  tags = {
    Name = "Prod-Private-RT-1a"
  }
}

resource "aws_route_table" "prod-private-rt-2" {
  vpc_id = "${aws_vpc.prod-vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.prod_ngw_2.id}"
  }

  tags = {
    Name = "Prod-Private-RT-1b"
  }
}

resource "aws_route_table_association" "prod-pub-1" {
  subnet_id = "${aws_subnet.public-subnet-1.id}"
  route_table_id = "${aws_route_table.prod-public-rt.id}"
}


resource "aws_route_table_association" "prod-pub-2" {
  subnet_id = "${aws_subnet.public-subnet-2.id}"
  route_table_id = "${aws_route_table.prod-public-rt.id}"
}

resource "aws_route_table_association" "prod-pvt-1" {
  subnet_id = "${aws_subnet.private-subnet-1.id}"
  route_table_id = "${aws_route_table.prod-private-rt-1.id}"
}

resource "aws_route_table_association" "prod-pvt-2" {
  subnet_id = "${aws_subnet.private-subnet-2.id}"
  route_table_id = "${aws_route_table.prod-private-rt-2.id}"
}
