#Public Route Table 
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "public_rt"
  }
}
#WP Route Table
resource "aws_route_table" "wp_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "wp_rt"
  }
}
#Database Route Table
resource "aws_route_table" "database_rt" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "database_rt"
  }
}

#Routes with IWG Public 
resource "aws_route" "public_internet_gateway" {
  route_table_id         = aws_route_table.public_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
  depends_on             = [aws_route_table.public_rt]
}

#Routes with IGW WP
resource "aws_route" "wp_internet_gateway" {
  route_table_id         = aws_route_table.wp_rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
  depends_on             = [aws_route_table.public_rt]
}
