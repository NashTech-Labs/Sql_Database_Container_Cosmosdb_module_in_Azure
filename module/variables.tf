##############################
#      Common Name           #
##############################

variable "name" {
  description = "Common Name for all the resources"
  type        = string
}

##############################
#    Data Block Cosmosdb     #
##############################

variable "cosmosdbacc" {
  description = "Cosmosdb Account Name"
  type = string
}

variable "cosmosdbaccrg" {
  description = "Cosmosdb Account Resource Group Name"
  type = string 
}

##############################
#        Cosmosdb SQL        #
##############################

variable "cosmosdbsqlname" {
  description = "Cosmosdb SQL Name"
  type = string
}

variable "cosmosdbsqlcontainername" {
  description = "Cosmosdb SQL Container Name"
  type = string
}
