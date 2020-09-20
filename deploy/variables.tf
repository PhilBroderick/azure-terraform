variable "sub" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "client_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

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