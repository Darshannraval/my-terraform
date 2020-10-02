resource "aws_route_table_association" "primary_public" {
  subnet_id =  aws_subnet.Public_Primary.id  
  route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "secondary_public" {
  subnet_id =  aws_subnet.Public_Secondary.id  
  route_table_id = aws_route_table.r.id
}

resource "aws_route_table_association" "tertiary_public" {
  subnet_id =  aws_subnet.Public_Tertiary.id  
  route_table_id = aws_route_table.r.id
}