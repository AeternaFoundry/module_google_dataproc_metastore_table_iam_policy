resource "google_dataproc_metastore_table_iam_policy" "dataproc_metastore_table_iam_policies" {
  for_each = var.dataproc_metastore_table_iam_policies

  database_id = each.value.database_id
  policy_data = each.value.policy_data
  service_id  = each.value.service_id
  table       = each.value.table
  location    = each.value.location
  project     = each.value.project
}

