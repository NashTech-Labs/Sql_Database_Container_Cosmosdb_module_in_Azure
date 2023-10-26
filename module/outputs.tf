output "azurerm_cosmosdb_sql_container" {
  description = "Container ID"
  value       = azurerm_cosmosdb_sql_container.sqlcontainer.id
}

output "azurerm_cosmosdb_sql_container_name" {
  description = "Container Name"
  value       = azurerm_cosmosdb_sql_container.sqlcontainer.name
}

 output "cosmosdb_connectionstrings" {
   value     = "AccountEndpoint=${data.azurerm_cosmosdb_account.acc.endpoint};AccountKey=${data.azurerm_cosmosdb_account.acc.primary_key};"
   sensitive = true
 }