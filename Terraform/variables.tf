variable "region" {
  description = "aws region"
}

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

variable "instance_type" {
  type        = list(string)
  description = "Instance Type i.e t2.micro"
}
variable "ami_id" {
  type        = list(string)
  description = "AMI IDs"
}
variable "key_name" {
  type        = string
  description = "Key pair name for SSH Connection"
}
variable "volume_size" {
  type        = list(number)
  description = "Volume size"
}

#RDS
variable "identifier" {
  type        = string
  description = "identifier Name"
}
variable "allocated_storage" {
  type        = number
  description = "Storage size"
}
variable "engine" {
  type        = string
  description = "Engine"
}
variable "engine_version" {
  type        = string
  description = "Engine Version"
}
variable "instance_class" {
  type        = string
  description = "Instance Class Name"
}
variable "db_name" {
  type        = string
  description = "Database Name"
}
variable "port" {
  type        = number
  description = "Port Number"
}
variable "username" {
  type        = string
  description = "User Name"
}
variable "multi_az" {
  type        = bool
  description = "Multi AZ option"
}
variable "publicly_accessible" {
  type        = bool
  description = "Public Accessibility option"
}