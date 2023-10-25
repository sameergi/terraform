resource "aws_route_table" "demoroutetableid" {

  vpc_id = aws_vpc.demovpcid.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demogatewayid.id
  }
  tags = {
    Name = "Demoroutetable"
  }
}

