resource "aws_vpc" "main" {
  cidr_block = var.cidr_block

  tags      = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  vpc_id                                = aws_vpc.main.id
  cidr_block                          = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_name
  }
}
