resource "aws_nat_gateway" "prod_ngw_1" {
  allocation_id = "${aws_eip.nat_gw_1.id}"
  subnet_id     = "${aws_subnet.public-subnet-1.id}"

  tags = {
    Name = "Prod-NGW-1a"
  }
}

resource "aws_nat_gateway" "prod_ngw_2" {
  allocation_id = "${aws_eip.nat_gw_2.id}"
  subnet_id     = "${aws_subnet.public-subnet-2.id}"

  tags = {
    Name = "Prod-NGW-1b"
  }
}
