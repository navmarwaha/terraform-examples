resource "aws_eip" "nat_gw_1" {
  vpc = true
}

resource "aws_eip" "nat_gw_2" {
  vpc = true
}
