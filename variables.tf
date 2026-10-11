variable "dataproc_metastore_table_iam_policies" {
  description = <<EOT
Map of dataproc_metastore_table_iam_policies, attributes below
Required:
    - database_id
    - policy_data
    - service_id
    - table
Optional:
    - location
    - project
EOT

  type = map(object({
    database_id = string
    policy_data = string
    service_id  = string
    table       = string
    location    = optional(string)
    project     = optional(string)
  }))
}

