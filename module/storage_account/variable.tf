variable "str_acc" {

    type = map(object({
        rg_name = string
        location = string
        account_tier             = optional(string, "Standard")
        account_replication_type = optional(string, "LRS")
        account_kind             = optional(string, "StorageV2")
        access_tier              = optional(string, "Hot")
    }))
  
}