resource "aws_subnet" "public-subnet-1" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = element(var.public_subnets_cidrs, 0)
  availability_zone = "ap-southeast-2a"

  tags = {
    Name = "Demo Public Subnet 1"
  }
}
resource "aws_subnet" "public-subnet-2" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = element(var.public_subnets_cidrs, 1)
  availability_zone = "ap-southeast-2b"


  tags = {
    Name = "Demo Public Subnet 2"
  }
}
resource "aws_subnet" "public-subnet-3" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = element(var.public_subnets_cidrs, 2)
  availability_zone = "ap-southeast-2c"


  tags = {
    Name = "Demo Public Subnet 3"
  }
}


resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = element(var.private_subnets_cidrs, 0)
  availability_zone = "ap-southeast-2a"

  tags = {
    Name = "Demo private Subnet 1"
  }
}
resource "aws_subnet" "private-subnet-2" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = element(var.private_subnets_cidrs, 1)
  availability_zone = "ap-southeast-2b"


  tags = {
    Name = "Demo private Subnet 2"
  }
}
resource "aws_subnet" "private-subnet-3" {
  vpc_id            = aws_vpc.demo.id
  cidr_block        = element(var.private_subnets_cidrs, 2)
  availability_zone = "ap-southeast-2c"


  tags = {
    Name = "Demo private Subnet 3"
  }
}
