resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Demo Public Route table"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "Demo Private Route table"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.public-subnet-3.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_route_table_association" "d" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "e" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.private_rt.id
}

resource "aws_route_table_association" "f" {
  subnet_id      = aws_subnet.private-subnet-3.id
  route_table_id = aws_route_table.private_rt.id
}



