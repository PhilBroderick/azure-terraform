variable "rgName" {
  type = string
  description = "The name of the resource group"
}

variable "location" {
  type = string
  description = "The location to deploy the resources to"
  default = "uksouth"
}

variable "storageAccountName" {
  type = string
  description = "The name of the storage account for image persistence"
}