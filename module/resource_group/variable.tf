variable "rg_group"{
    type = map(object({
    location = string
    tags     = optional(map(string), {})
  }))
}