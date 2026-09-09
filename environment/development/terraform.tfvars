subscription_id ="fcb2d69d-cb3d-40cc-8bcd-98f6cf6a71a3"

infra = {


    resource_group={
        "rg-sudarshan121"={
            location = "Central India"
            tags = {
                 Environment = "Dev"
            }
        }

        "rg-sudarshan-test122" = {
            location = "Central India"
      tags = {
        Environment = "Test"
      }
    }

     "rg-sudarshan123" = {
            location = "Central India"
      tags = {
        Environment = "Test"
      }
    }
    }

    storage_account = {
        "strsudarhan" ={
        rg_name = "rg-sudarshan"
        account_tier             = "Standard"
        account_replication_type = "LRS"
        account_kind             = "StorageV2"
        access_tier              = "Hot"
        }

    }
}