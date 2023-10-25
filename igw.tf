resource "aws_internet_gateway" "demogatewayid" {
  vpc_id = aws_vpc.demovpcid.id
  tags = {
    Name = "Demogateway"
  }
}

