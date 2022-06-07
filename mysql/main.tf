
/*
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_region
}

*/

# Create MYSQL server for database
resource "azurerm_mysql_server" "mysql_server" {
  name                         = var.server_name
  resource_group_name          = var.rg_name
  location                     = var.rg_region
  administrator_login          = var.db_admin
  administrator_login_password = var.db_password

  sku_name   = var.sku_name
  storage_mb = var.storage_mb
  version    = var.server_version

  auto_grow_enabled                 = var.auto_grow
  backup_retention_days             = var.backup_retention_days
  geo_redundant_backup_enabled      = var.geo_redundant_backup
  infrastructure_encryption_enabled = var.infrastructure_encryption
  public_network_access_enabled     = var.public_net_access
  ssl_enforcement_enabled           = var.ssl_enforcement
  ssl_minimal_tls_version_enforced  = var.ssl_minimal_tls
}

# Create and database
resource "azurerm_mysql_database" "mysql_db" {
  name                = var.db_name
  resource_group_name = var.rg_name
  server_name         = azurerm_mysql_server.mysql_server.name
  charset             = var.db_charset
  collation           = var.db_collation
}

# Config MySQL Server Firewall Rule for ASG
resource "azurerm_mysql_firewall_rule" "ASG" {
  name                = var.firewall_rule_name
  resource_group_name = var.rg_name
  server_name         = azurerm_mysql_server.mysql_server.name
  start_ip_address    = var.asg_ip
  end_ip_address      = var.asg_ip
}