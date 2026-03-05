resource "aws_route_table" "public_rt" {

  vpc_id = aws_vpc.main.id

}

resource "aws_route" "internet_access" {

  route_table_id         = aws_route_table.public_rt.id
  gateway_id             = aws_internet_gateway.igw.id
  destination_cidr_block = "0.0.0.0/0"

}
