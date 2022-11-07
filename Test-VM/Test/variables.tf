variable "location" {
  type    = string
}

variable "RG" {
  type     = string
}

variable "nwprefix" {
  type    = map(string)
}
variable "nsgprefix" {
  type    = map(string)
}
variable "subnet" {
   type = map(string)

}

variable "IDName" {
  type    = string
}

variable "subscription_id" {
  type        = string
  description = "The Azure subscription id used to provision resources."
}

variable "username" {
	description = "Admin user"
	type = string
	sensitive = true
	}
	
	
variable "rsa_key" {
	description = "User key"
	type = string
	sensitive = true
	}

variable "Cost_Center" {
  type        = number
  description = "The Azure subscription id used to provision resources."
}

variable "Environment" {
  type        = string
  description = "The Azure subscription id used to provision resources."
}


variable "StorageAccountid"{
  type=string
}
variable "tags_map" {
  description = "Map of tags and values"
 type        = map(string)
}


variable "vms" {
  type = map(object({
    size = string
    source_image_id = string
    disks = map(object({
      size                 = number
      storage_account_type = string
      lun                  = number
    }))
  }))
}