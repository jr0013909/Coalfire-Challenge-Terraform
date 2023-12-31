region         = "us-east-1"
cidr           = "10.1.0.0/16"
public_cidr1   = "10.1.0.0/24"
public_cidr2   = "10.1.1.0/24"
wp_cidr_1      = "10.1.2.0/24"
wp_cidr_2      = "10.1.3.0/24"
database_cidr1 = "10.1.4.0/24"
database_cidr2 = "10.1.5.0/24"
instance_type  = ["t3a.medium", "t3a.micro"]
ami_id         = ["ami-05b0cd1af6c0c34e3", "ami-04823729c75214919"]
key_name       = "coalfire-kp"
volume_size    = [50, 20]

identifier          = "rds1"
allocated_storage   = 20
engine              = "postgres"
engine_version      = "11"
instance_class      = "db.t3.micro"
db_name             = "rds_db"
port                = 5432
username            = "postgres_admin"
publicly_accessible = "false"
multi_az            = false