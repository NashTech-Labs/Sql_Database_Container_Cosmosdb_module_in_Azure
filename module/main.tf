locals {
  cosmosdbsqlname  = "cosmosdb-${var.name}-sqldb-vv"
  cosmosdbsqlcontainername = "cosmosdb-${var.name}-container-vv"
}

data "azurerm_cosmosdb_account" "acc" {
  name                = var.cosmosdbacc
  resource_group_name = var.cosmosdbaccrg
}

resource "azurerm_cosmosdb_sql_database" "db" {
  name                = local.cosmosdbsqlname
  resource_group_name = data.azurerm_cosmosdb_account.acc.resource_group_name
  account_name        = data.azurerm_cosmosdb_account.acc.name
}

resource "azurerm_cosmosdb_sql_container" "sqlcontainer" {
  name                  = local.cosmosdbsqlcontainername
  resource_group_name   = data.azurerm_cosmosdb_account.acc.resource_group_name
  account_name          = data.azurerm_cosmosdb_account.acc.name
  database_name         = azurerm_cosmosdb_sql_database.db.name
  partition_key_path    = "/definition/id"
  partition_key_version = 1
  throughput            = 400
  indexing_policy {
    indexing_mode = "consistent"

    included_path {
      path = "/*"
    }

    included_path {
      path = "/included/?"
    }

    excluded_path {
      path = "/excluded/?"
    }
  }
  unique_key {
    paths = ["/definition/idlong", "/definition/idshort"]
  }
}