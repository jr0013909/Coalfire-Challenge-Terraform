variable "cidr" {
  type        = string
  description = "The Name  of CIDR Block"
}
variable "public_cidr1" {
  type        = string
  description = "The Name  of 1st Public Subnet"
}
variable "public_cidr2" {
  type        = string
  description = "The Name  of 2nd Public Subnet"
}
variable "wp_cidr_1" {
  type        = string
  description = "The Name  of 1st WP Subnet"
}
variable "wp_cidr_2" {
  type        = string
  description = "The Name  of 2nd WP Subnet"
}
variable "database_cidr1" {
  type        = string
  description = "The Name  of 1st Database Subnet"
}
variable "database_cidr2" {
  type        = string
  description = "The Name  of 2nd Database Subnet"
}
