variable "rg_name" {
  description = "Resource group name"
  type        = string
  default     = "my_rg"
}

variable "region" {
  description = "Region"
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
variable "vnet_rule" {
  description = "virtual network rule"
  type        = string
  defdefault  = ""
}

variable "db_admin" {
  description = "Database server admin username"
  type        = string
  defdefault  = ""
}
variable "db_password" {
  description = "Database server admin password"
  type        = string
  defdefault  = ""
}

variable "sku_name" {
  description = "Database server sku_name "
  type        = string
  defdefault  = "GP_Gen5_2"
}

variable "storage_mb" {
  description = "Database server storage_mb "
  type        = number
  defdefault  = 5120
}

variable "version" {
  description = "Database server version  "
  type        = string
  defdefault  = "5.7"
}

variable "auto_grow" {
  description = "Database server auto_grow"
  type        = bool
  defdefault  = true
}
variable "backup_retention_days" {
  description = "Database server backup_retention_days"
  type        = number
  defdefault  = 7
}

variable "geo_redundant_backup" {
  description = "Database server geo_redundant_backup-enabled "
  type        = bool
  defdefault  = true
}

variable "infrastructure_encryption" {
  description = "Database server infrastructure_encryption "
  type        = bool
  defdefault  = true
}

variable "public_net_access" {
  description = "Database server public_network_access_enabled   "
  type        = bool
  defdefault  = false
}

variable "ssl_enforcement" {
  description = "Database server ssl_enforcement_enabled  "
  type        = bool
  defdefault  = true
}

variable "ssl_minimal_tls" {
  description = "Database server ssl_minimal_tls_version_enforced  "
  type        = string
  defdefault  = "TLS1_2"
}

variable "db_charset" {
  description = "Database charset "
  type        = string
  defdefault  = "utf8"
}

variable "db_collation" {
  description = "Database collation "
  type        = string
  defdefault  = "utf8_unicode_ci"
}