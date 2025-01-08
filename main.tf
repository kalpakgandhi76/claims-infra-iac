provider "azurerm" {
  features {}
  
  # Authentication using environment variables (Client ID, Client Secret, Tenant ID)
  client_id       = var.CLIENT_ID
  client_secret   = var.SECRET
  tenant_id       = var.TENANT_ID
  subscription_id = var.SUBSCRIPTION_ID
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "East US"
}

resource "azurerm_service_plan" "asp" {
  name                = var.asp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = var.asp_os_type
  sku_name            = var.asp_sku
}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.webapp_name
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.rg.location
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    always_on = false
    application_stack {
      current_stack = dotnetcore
      dotnet_core_version = v9.0
    }
     
  }
}



output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "service_plan_name" {
  value = azurerm_service_plan.asp.name
}

output "web_app_name" {
  value = azurerm_windows_web_app.webapp.name
}