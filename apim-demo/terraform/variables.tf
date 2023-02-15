variable "prefix" {
  description = "Company/Division prefix"
  type    = string
  default = "cz001"
}

variable "project" {
  type    = string
  default = "jupiter"
}

variable "environment" {
  description = "e.g. dev, test, acc, prod"
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "eastus"
}


locals {
  #resourceGroupName  = "rg-${var.prefix}-${var.project}-${var.environment}-${var.location}"

  # static reference if forced to use pre-existing RG
  resourceGroupName = "1-b4c38521-playground-sandbox"
  apimName = "apim-${var.prefix}-${var.project}-${var.environment}-${var.location}"
}
