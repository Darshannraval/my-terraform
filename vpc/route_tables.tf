resource "aws_route_table" "r" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = var.default
    gateway_id = aws_internet_gateway.gw.id
  }

   tags = {
    Name = "DevopsRT"
  }
}