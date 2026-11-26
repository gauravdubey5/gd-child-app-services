# gd-child-app-services: Azure App Service Plan Terraform Module

This child module creates and manages Azure App Service Plans (`azurerm_service_plan`) for hosting Linux and Windows Web Apps or Function Apps.

Part of the **Azure Parent–Child Infrastructure Architecture** under GitHub account `gauravdubey5`.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| `app_service_plans` | Mapping of App Service Plan configurations (`name`, `resource_group_name`, `location`, `os_type`, `sku_name`, etc.) | `any` | `{}` | yes |

## Outputs

| Name | Description |
|------|-------------|
| `app_service_plans` | The created App Service Plans |
