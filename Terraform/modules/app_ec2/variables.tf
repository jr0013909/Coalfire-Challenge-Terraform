variable "ami_id" {
  type        = list(string)
  description = "AMI IDs"
} //value comes from main.tf

variable "public_subnets" {
  type        = list(string)
  description = "The value of Public Subnets"
} //value comes from main.tf
variable "instance_type" {
  type        = list(string)
  description = "Instance Type i.e t2.micro"
} //value comes from main.tf
variable "volume_size" {
  type        = list(number)
  description = "Volume size"
} //value comes from main.tf
variable "key_name" {
  type        = string
  description = "Key pair name for SSH Connection"
} //value comes from main.tf
variable "vm_security_group" {
  type        = string
  description = "The Name  of the Security Group"
} //value comes from main.tf
