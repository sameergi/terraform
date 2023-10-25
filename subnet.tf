resource "aws_subnet" "demosubnetid" {
  vpc_id            = aws_vpc.demovpcid.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Demosubnet"
  }
}

