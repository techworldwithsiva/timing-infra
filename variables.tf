variable "tags" {
  type = map
  default = {
    Name = "timing"
    Environment = "DEV"
    Terraform = "true"
  }
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "azs" {
  default = ["ap-south-1a","ap-south-1b"]
}

variable "public_subnet_cidr" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "public_subnet_names" {
  default = ["timing-public-1a","timing-public-1b"]
}

variable "private_subnet_cidr" {
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "private_subnet_names" {
  default = ["timing-private-1a","timing-private-1b"]
}

variable "database_subnet_cidr" {
  default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "database_subnet_names" {
  default = ["timing-database-1a","timing-database-1b"]
}

variable "rds_security_group_name" {
  default = "timing"
}

variable "rds_security_group_description" {
  default = "This security group is to attach timing RDS"
}

variable "ingress_cidr" {
  default = []
}

variable "allocated_storage" {
  default = "10"
}

variable "db_name" {
  default = "timing"
}

variable "identifier" {
  default = "timing"
}
variable "engine" {
  default = "postgres"
}
variable "engine_version" {
  default = "14.7-R1"
}
variable "rds_username" {
  default = "timingadmin"
}
variable "secret_name" {
  default = "timing/rds-password-value"
}
variable "instance_type" {
 default = "db.t4g.micro" 
}





