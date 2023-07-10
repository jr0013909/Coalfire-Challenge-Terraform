output "ssh_sg_id" {
  value = aws_security_group.ssh_sg.id
}
output "database_sg_id" {
  value = aws_security_group.database_sg.id
}
output "alb_sg_id" {
  value = aws_security_group.alb_sg.id
}
