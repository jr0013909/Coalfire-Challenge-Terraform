# VPC Module
module "networking" {
  source         = "./modules/vpc"
  cidr           = var.cidr
  public_cidr1   = var.public_cidr1
  public_cidr2   = var.public_cidr2
  wp_cidr_1      = var.wp_cidr_1
  wp_cidr_2      = var.wp_cidr_2
  database_cidr1 = var.database_cidr1
  database_cidr2 = var.database_cidr2
}

# SG Module
module "security_groups" {
  source    = "./modules/sg"
  sg_vpc_id = module.networking.vpc_id
}
# EC2 Module
module "compute" {
  source            = "./modules/app_ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  volume_size       = var.volume_size
  public_subnets    = ["${module.networking.public_subnet_1}", "${module.networking.wp_subnet_1}", "${module.networking.wp_subnet_2}"]
  vm_security_group = module.security_groups.ssh_sg_id
}
# RDS Module
module "rds" {
  source                 = "./modules/rds"
  identifier             = var.identifier
  allocated_storage      = var.allocated_storage
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.instance_class
  db_name                = var.db_name
  port                   = var.port
  username               = var.username
  multi_az               = var.multi_az
  publicly_accessible    = var.publicly_accessible
  vpc_security_group_ids = ["${module.security_groups.database_sg_id}"]
  subnet_ids             = ["${module.networking.database_subnet_1}", "${module.networking.database_subnet_2}"]
}
# ALB Module
module "alb" {
  source             = "./modules/alb"
  alb_public_subnets = ["${module.networking.public_subnet_1}", "${module.networking.public_subnet_2}"]
  alb_security_group = module.security_groups.alb_sg_id
  alb_vpc_id         = module.networking.vpc_id
  target_id          = module.compute.redhat_instance01_id
}
