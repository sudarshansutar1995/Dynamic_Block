 module "rgs" {
   source = "../../module/resource_group"
   rg_group = var.infra.resource_group  
 }

 module "storageacc" {
  source = "../../module/storage_account" 
   str_acc ={
    for k, v in var.infra.storage_account  : k => {
        rg_name = module.rgs.rg_outputs[v.rg_name]
        location = var.infra.resource_group[v.rg_name].location
        account_tier             = v.access_tier
        account_replication_type = v.account_replication_type
        account_kind             = v.account_kind
        account_tier =          v.account_tier
    }

   }
 }