output "kibana_osquery_packs_id" {
  description = "Map of id values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_osquery_packs_description" {
  description = "Map of description values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no description are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.description if v.description != null && length(v.description) > 0 }
}
output "kibana_osquery_packs_enabled" {
  description = "Map of enabled values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no enabled are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.enabled if v.enabled != null }
}
output "kibana_osquery_packs_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_osquery_packs_name" {
  description = "Map of name values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no name are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kibana_osquery_packs_pack_id" {
  description = "Map of pack_id values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no pack_id are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.pack_id if v.pack_id != null && length(v.pack_id) > 0 }
}
output "kibana_osquery_packs_policy_ids" {
  description = "Map of policy_ids values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no policy_ids are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.policy_ids if v.policy_ids != null && length(v.policy_ids) > 0 }
}
output "kibana_osquery_packs_queries" {
  description = "Map of queries values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no queries are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.queries if v.queries != null && length(v.queries) > 0 }
}
output "kibana_osquery_packs_shards" {
  description = "Map of shards values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no shards are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.shards if v.shards != null && length(v.shards) > 0 }
}
output "kibana_osquery_packs_space_id" {
  description = "Map of space_id values across all kibana_osquery_packs, keyed the same as var.kibana_osquery_packs except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_osquery_pack.kibana_osquery_packs : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}

