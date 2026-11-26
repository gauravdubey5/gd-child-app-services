output "app_service_plans" {
  description = "The created App Service Plans."
  value       = azurerm_service_plan.app_service_plans
}
