output "functions_lookup_id" {
  description = "Map of id values across all functions_lookup, keyed the same as var.functions_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_functions.functions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "functions_lookup_database" {
  description = "Map of database values across all functions_lookup, keyed the same as var.functions_lookup except keys with no database are omitted"
  value       = { for k, v in data.snowflake_functions.functions_lookup : k => v.database if v.database != null && length(v.database) > 0 }
}
output "functions_lookup_functions" {
  description = "Map of functions values across all functions_lookup, keyed the same as var.functions_lookup except keys with no functions are omitted"
  value       = { for k, v in data.snowflake_functions.functions_lookup : k => v.functions if v.functions != null && length(v.functions) > 0 }
}
output "functions_lookup_schema" {
  description = "Map of schema values across all functions_lookup, keyed the same as var.functions_lookup except keys with no schema are omitted"
  value       = { for k, v in data.snowflake_functions.functions_lookup : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

