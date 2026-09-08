variable "subscription_id"{
    type = string
}

variable "infra"{
    type = object({
        resource_group =map(object({
          location = string
          tags = optional(map(string), {})
          }))

        storage_account = map (object({ 
        rg_name = string
        account_tier             = optional(string, "Standard")
        account_replication_type = optional(string, "LRS")
        account_kind             = optional(string, "StorageV2")
        access_tier              = optional(string, "Hot")
        }))
    })
}

    
    
