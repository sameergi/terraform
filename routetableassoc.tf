resource "aws_route_table_association" "demorta" {
  subnet_id      = aws_subnet.demosubnetid.id
  route_table_id = aws_route_table.demoroutetableid.id

}

