resource "elasticstack_kibana_osquery_pack" "kibana_osquery_packs" {
  for_each = var.kibana_osquery_packs

  name        = each.value.name
  queries     = each.value.queries
  description = each.value.description
  enabled     = each.value.enabled
  policy_ids  = each.value.policy_ids
  shards      = each.value.shards
  space_id    = each.value.space_id
  timeouts    = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

