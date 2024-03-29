locals {
  name = "DRE"
  disks = distinct(flatten([
    for key_vm, vm in var.vms : [
      for key_disk, disk in vm.disks : {
        vm                   = key_vm
        disk                 = key_disk
        size                 = disk.size
        storage_account_type = disk.storage_account_type
        lun					 = disk.lun
      }
    ]
  ]))
}