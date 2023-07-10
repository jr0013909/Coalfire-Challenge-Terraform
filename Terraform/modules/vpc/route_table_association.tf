#Public Subnet 1 Association 
resource "aws_route_table_association" "public_rt_association_1" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_rt.id
}
#Public Subnet 2 Association 
resource "aws_route_table_association" "public_rt_association_2" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_rt.id
}
#WP Subnet 1 Association rt
resource "aws_route_table_association" "wp_rt_association_1" {
  subnet_id      = aws_subnet.wp_subnet_1.id
  route_table_id = aws_route_table.wp_rt.id
}
#WP Subnet 2 Association rt 
resource "aws_route_table_association" "wp_rt_association_2" {
  subnet_id      = aws_subnet.wp_subnet_2.id
  route_table_id = aws_route_table.wp_rt.id
}
#Database Subnet 1 Association rt
resource "aws_route_table_association" "database_rt_association_1" {
  subnet_id      = aws_subnet.database_subnet_1.id
  route_table_id = aws_route_table.database_rt.id
}
#Database Subnet 2 Association rt 
resource "aws_route_table_association" "database_rt_association_2" {
  subnet_id      = aws_subnet.database_subnet_2.id
  route_table_id = aws_route_table.database_rt.id
}