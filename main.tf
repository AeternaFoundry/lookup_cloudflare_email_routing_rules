data "cloudflare_email_routing_rules" "email_routing_rules_lookup" {
  for_each = var.email_routing_rules_lookup

  enabled   = each.value.enabled
  max_items = each.value.max_items
  zone_id   = each.value.zone_id
}

