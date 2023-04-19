resource "aws_eip" "nat" {
  vpc = true

  tags = {
    Name = "Demo-Nat"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "Demo-nat-gateway"
  }

  depends_on = [aws_internet_gateway.gw]
}
