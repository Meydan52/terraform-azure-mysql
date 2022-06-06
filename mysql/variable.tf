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
  default     = ""
  
}
variable "mysql_db" {
  description = "mysql db"
  type        = string
  default     = ""
}