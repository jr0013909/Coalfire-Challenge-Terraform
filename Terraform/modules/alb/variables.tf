variable "alb_security_group" {
  type        = string
  description = "The Name  of Security Group"
} //value comes from main.tf
variable "alb_public_subnets" {
  type        = list(string)
  description = "The Name  of Public Subnets"
} //value comes from main.tf
variable "alb_vpc_id" {
  type        = string
  description = "The Name  of VPC ID"
} //value comes from main.tf
variable "target_id" {
  type        = string
  description = "The Name  of Instance ID"
} //value comes from main.tf