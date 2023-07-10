output "db_name" {
  value = aws_db_instance.rds_db.db_name
}
output "db_username" {
  value = aws_db_instance.rds_db.username
}
output "db_password" {
  value     = aws_db_instance.rds_db.password
  sensitive = true
}
output "db_endpoint" {
  value = aws_db_instance.rds_db.endpoint
}
