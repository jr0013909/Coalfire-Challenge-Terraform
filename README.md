# Coalfire Technical Challange
Coalfire Technical Challenge to deploy the necessary AWS resources
using Terraform described in the Scenario. 

## Prerequisites
Latest Version of Terraform


## Usage
To run execute:

$ terraform init

$ terraform plan

$ terraform apply

## Resourced Deployed 

1 vpc
6 subnets
1 compute instance running Windows Server 2019 in subnet Public Subnet 1

1 compute instance running RedHat in subnet WP Subnet 1

1 compute instance running RedHat in subnet WP Subnet 2

1 RDS PostgreSQL Databases running PostgreSQL 11 in subnet DB Subnet 2

1 ALB that has listeners in subnets Public Subnet 1 & 2

All Resources within the subnets have appropriate least-permissive Security Groups in place
