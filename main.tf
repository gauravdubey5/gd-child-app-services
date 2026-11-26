resource "azurerm_service_plan" "app_service_plans" {
  for_each                 = var.app_service_plans
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  os_type                  = lookup(each.value, "os_type", "Linux")
  sku_name                 = lookup(each.value, "sku_name", "B1")
  worker_count             = lookup(each.value, "worker_count", null)
  zone_balancing_enabled   = lookup(each.value, "zone_balancing_enabled", false)
  per_site_scaling_enabled = lookup(each.value, "per_site_scaling_enabled", false)
  tags                     = lookup(each.value, "tags", {})
}
