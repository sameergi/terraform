#creating 1st ec2 instance in public subnet
resource "aws_instance" "instance1" {
  ami                         = "ami-06006e8b065b5bd46"
  instance_type               = "t2.micro"
  key_name                    = "mumbaikey"
  vpc_security_group_ids      = ["${aws_security_group.demosgid.id}"]
  subnet_id                   = aws_subnet.demosubnetid.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "my public insatance 1"
  }
}

