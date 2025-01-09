variable "CLIENT_ID" {
  description = "Azure Client ID"
  type        = string
}

variable "SECRET" {
  description = "Azure Client Secret"
  type        = string
  sensitive   = true
}

variable "TENANT_ID" {
  description = "Azure Tenant ID"
  type        = string
}

variable "SUBSCRIPTION_ID" {
  description = "Azure Subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "my-resource-group"
}

variable "asp_name" {
  description = "The Azure Service Plan Name"
  default     = "backstage-serviceplan"
}

variable "asp_os_type" {
  description = "The name of the ASP OS Type"
  default     = "windows"
}

variable "asp_sku" {
  description = "The ASP Sku name"
  default     = "F1"
}

variable "webapp_name" {
  description = "The Web app name."
  default     = "F1"
}

variable "location" {
  description = "Location of the resource."
  default     = "East US"
}