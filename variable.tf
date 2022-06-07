variable "rg_name" {
  description = "Resource group name"
  type        = string
  default     = "my_rg"
}

variable "rg_region" {
  description = "Resource group location"
  type        = string
  default     = "West Europe"
}

variable "server_name" {
  description = "Server name"
  type        = string
  default     = "example-mysqlserver"

}
variable "db_name" {
  description = "mysql db name"
  type        = string
  default     = "exampledb"
}
/*
variable "vnet_rule" {
  description = "virtual network rule"
  type        = string
  default  = ""
}
*/

variable "db_admin" {
  description = "Database server admin username"
  type        = string
  default     = ""
}
variable "db_password" {
  description = "Database server admin password"
  type        = string
  default     = ""
}

variable "sku_name" {
  description = "Database server sku_name "
  type        = string
  default     = "GP_Gen5_2"
}

variable "storage_mb" {
  description = "Database server storage_mb "
  type        = number
  default     = 5120
}

variable "server_version" {
  description = "Database server version  "
  type        = string
  default     = "5.7"
}

variable "auto_grow" {
  description = "Database server auto_grow"
  type        = bool
  default     = true
}
variable "backup_retention_days" {
  description = "Database server backup_retention_days"
  type        = number
  default     = 7
}

variable "geo_redundant_backup" {
  description = "Database server geo_redundant_backup-enabled "
  type        = bool
  default     = true
}

variable "infrastructure_encryption" {
  description = "Database server infrastructure_encryption "
  type        = bool
  default     = true
}

variable "public_net_access" {
  description = "Database server public_network_access_enabled   "
  type        = bool
  default     = false
}

variable "ssl_enforcement" {
  description = "Database server ssl_enforcement_enabled  "
  type        = bool
  default     = true
}

variable "ssl_minimal_tls" {
  description = "Database server ssl_minimal_tls_version_enforced  "
  type        = string
  default     = "TLS1_2"
}

variable "db_charset" {
  description = "Database charset "
  type        = string
  default     = "utf8"
}

variable "db_collation" {
  description = "Database collation "
  type        = string
  default     = "utf8_unicode_ci"
}

variable "firewall_rule_name" {
  description = "database firewall rule name "
  type        = string
  default     = "database_asg_firewall_rule"
}

variable "asg_ip" {
  description = "IP address of the resource to have access to database  "
  type        = string
  default     = "azurerm_public_ip.wordpress.ip_address"
}