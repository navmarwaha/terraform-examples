resource "aws_internet_gateway" "prod_igw" {
  vpc_id = "${aws_vpc.prod-vpc.id}"

  tags = {
    Name = "Prod-IGW"
  }
}
