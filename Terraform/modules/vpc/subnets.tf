# Availability Zones
data "aws_availability_zones" "available" {
  state = "available"
}
#Public Subnet 1
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_cidr1
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet1"
  }
}
#Public Subnet 2
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_cidr2
  availability_zone       = data.aws_availability_zones.available.names[1]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet2"
  }
}

#WP Subnet 1
resource "aws_subnet" "wp_subnet_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.wp_cidr_1
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "Web-Applicatiton-Subnet1"
  }
}

#WP Subnet 2
resource "aws_subnet" "wp_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.wp_cidr_2
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "Web-Applicatiton-Subnet2"
  }
}

#Database Subnet 1
resource "aws_subnet" "database_subnet_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.database_cidr1
  availability_zone = data.aws_availability_zones.available.names[4]
  tags = {
    Name = "Database-Subnet1"
  }
}

#Database Subnet 2
resource "aws_subnet" "database_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.database_cidr2
  availability_zone = data.aws_availability_zones.available.names[5]
  tags = {
    Name = "Database-Subnet2"
  }
}