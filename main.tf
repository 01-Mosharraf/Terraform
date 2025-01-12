
resource "aws_vpc" "network" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "hello-tf "
  }
}

resource "aws_subnet" "web-1" {
  vpc_id            = aws_vpc.network.id
  availability_zone = var.subnet_azs[0]
  cidr_block        = var.subnet_cidrs[0]
  tags = {
    Name = var.subnet_name[0]
  }

  depends_on = [aws_vpc.network]
}

resource "aws_subnet" "web-2" {
  vpc_id            = aws_vpc.network.id
  availability_zone = var.subnet_azs[1]
  cidr_block        = var.subnet_cidrs[1]
  tags = {
    Name = var.subnet_name[1]
  }

  depends_on = [aws_vpc.network]
}

resource "aws_subnet" "db-1" {
  vpc_id            = aws_vpc.network.id
  availability_zone = var.subnet_azs[2]
  cidr_block        = var.subnet_cidrs[2]
  tags = {
    Name = var.subnet_name[2]
  }

  depends_on = [aws_vpc.network]
}

resource "aws_subnet" "db-2" {
  vpc_id            = aws_vpc.network.id
  availability_zone = var.subnet_azs[3]
  cidr_block        = var.subnet_cidrs[3]
  tags = {
    Name = var.subnet_name[3]
  }

  depends_on = [aws_subnet.db-1]
}