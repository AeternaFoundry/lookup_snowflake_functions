data "snowflake_functions" "functions_lookup" {
  for_each = var.functions_lookup

  database = each.value.database
  schema   = each.value.schema
}

