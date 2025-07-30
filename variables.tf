# AWS region
variable "aws_region" {
  type = string
}

# EKS
variable "cluster_name" {
  type = string
}

# RDS
variable "db_name" {
  type = string
}

variable "db_username" {
  type = string
}

variable "db_password" {
  type      = string
  sensitive = true
}

# Optional: only if you're not pulling from VPC module
variable "vpc_id" {
  type = string
  description = "VPC ID for RDS or EKS (optional if passed from module)"
}

variable "subnet_ids" {
  type = list(string)
  description = "Subnet IDs for DB subnet group or EKS worker nodes"
}