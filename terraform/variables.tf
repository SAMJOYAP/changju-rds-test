variable "identifier" {
  description = "Unique identifier for the RDS instance/cluster"
  type        = string
  default     = "changju-rds-test"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-northeast-2"
}

variable "db_engine" {
  description = "Database engine (postgres, mysql, aurora-postgresql, aurora-mysql)"
  type        = string
  default     = "mysql"
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Name of the database to create"
  type        = string
  default     = "appdb"
}

variable "db_username" {
  description = "Master DB username"
  type        = string
  default     = "dbadmin"
}

variable "multi_az" {
  description = "Enable Multi-AZ deployment (standby replica for RDS, reader instance for Aurora)"
  type        = bool
  default     = false
}

variable "backup_retention_days" {
  description = "Number of days to retain automated backups"
  type        = number
  default     = 7
}

variable "performance_insights" {
  description = "Enable Performance Insights (not supported on db.t3.micro)"
  type        = bool
  default     = false
}

variable "cloudwatch_logs" {
  description = "Export database logs to CloudWatch"
  type        = bool
  default     = false
}

variable "secrets_manager" {
  description = "Store DB credentials in AWS Secrets Manager"
  type        = bool
  default     = true
}
