# AWS
aws_region = "ap-south-1"

# EKS
cluster_name = "dev-cluster"

# VPC (optional if you're passing from modules)
vpc_id     = "vpc-xxxxxxxx"  # will be passed from module usually
subnet_ids = ["subnet-abc123", "subnet-def456"]  # will be passed from module usually

# RDS (MySQL)
db_name     = "mydb"
db_username = "admin"
db_password = "StrongPass123!"  # make sure this meets AWS password policy