
resource "aws_vpc" "network" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "hello-tf "
  }
}

resource "aws_subnet" "subnets" {
  count             = length(var.subnets_info)
  vpc_id            = aws_vpc.network.id
  availability_zone = var.subnets_info[count.index].azs
  cidr_block        = var.subnets_info[count.index].cidr
  tags = {
    Name = var.subnets_info[count.index].name
  }

  depends_on = [aws_vpc.network]
}

