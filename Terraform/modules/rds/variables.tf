variable "identifier" {
  type        = string
  description = "identifier Name"
} //value comes from main.tf
variable "allocated_storage" {
  type        = number
  description = "Storage size"
} //value comes from main.tf
variable "engine" {
  type        = string
  description = "Engine"
} //value comes from main.tf
variable "engine_version" {
  type        = string
  description = "Engine Version"
} //value comes from main.tf
variable "instance_class" {
  type        = string
  description = "Instance Class Name"
} //value comes from main.tf
variable "db_name" {
  type        = string
  description = "Database Name"
} //value comes from main.tf
variable "port" {
  type        = number
  description = "Port Number"
} //value comes from main.tf
variable "username" {
  type        = string
  description = "User Name"
} //value comes from main.tf
variable "multi_az" {
  type        = bool
  description = "Multi AZ option"
} //value comes from main.tf
variable "publicly_accessible" {
  type        = bool
  description = "Public Accessibility option"
} //value comes from main.tf

variable "vpc_security_group_ids" { type = list(string) }
variable "subnet_ids" { type = list(string) }
