## Description

Here, In this template, we will create a sql databsae and container in cosmosdb account using the terraform module within a subscription.

---

##### Pre-Requisite

* Azure Account
* Pre Login into your Azure Account

---

### Steps

* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.
* Commands :
```
-  terraform init 
-  terraform plan 
-  terraform apply 
``` 
* It will create the resource within your subscription.
* To check whether the Cosmosdb Database and SQL Container are created or not within the subscription or not.

`az cosmosdb database list --name <CosmosDBAccountName> --resource-group <ResourceGroupName> --output table
`
`az cosmosdb sql container list --account-name mycosmosdb --db-name mydatabase --resource-group myresourcegroup` 

* Use the already created cosmosdb account to put the values in the `terraform.tfvars`, command to create `vi terraform.tfvars`

* Reference for the cosmosdb account module :- https://github.com/NashTech-Labs/Cosmosdb_Account_module_in_Azure
---

## Configuration

The following table lists the configurable parameters of the Cosmosdb account module with their default values.

| Parameters                      | Description                                   | Required | Type   | Default |
|---------------------------------|-----------------------------------------------|----------|--------|---------|
| name                            | Common Name for all the resources             | Yes      | string |         |
| cosmosdbacc                     | Cosmosdb Account Resource Group Name          | Yes      | string |         |
| cosmosdbaccrg                   | Name of Cosmosdb Account                      | Yes      | string |         |

---