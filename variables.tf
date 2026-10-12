variable "functions_lookup" {
  description = <<EOT
Map of functions_lookup, attributes below
Required:
    - database
    - schema
EOT

  type = map(object({
    database = string
    schema   = string
  }))
}

