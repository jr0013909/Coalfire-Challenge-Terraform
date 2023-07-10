output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_1" {
  value = aws_subnet.public_subnet_1.id
}
output "public_subnet_2" {
  value = aws_subnet.public_subnet_2.id
}
output "wp_subnet_1" {
  value = aws_subnet.wp_subnet_1.id
}
output "wp_subnet_2" {
  value = aws_subnet.wp_subnet_2.id
}
output "database_subnet_1" {
  value = aws_subnet.database_subnet_1.id
}
output "database_subnet_2" {
  value = aws_subnet.database_subnet_2.id
}