# Declare the variable with value
variable "x" {
  default = 100
}

# Declare variable without value
#variable "y" {}

# declaring variable with list type
variable "y_list" {
  default = [1,2,3]
}


# declaring variable with map type
variable "z_map" {
  default = {
    x = 10
    y = 20
    z = "akhil"
  }
}


# print the variable
output "x" {
  value = var.x
}

output "y_list" {
  value = var.y_list
}

output "z_map" {
  value = var.z_map
}

# accessing values in list based on index
output "y_list1" {
  value = var.y_list[1]
}

output "z_x" {
  value = var.z_map["x"]
}


# we can Declare empty variables but data can be sent from a file those files are tfvars.

variable "env" {}
output "env" {
  value = var.env
}

# Scenario of want to use inbuilt function/access variable from with in quotes
output "env_name" {
  value = "Environment name - ${var.env} - ${uppercase(var.env)}"
}

# *.auto.tfvars are the files which will picked up automatically no need to provide exclusively and along with this the file name is terraform.auto.tfvars then also terraform picks the vars file automatically, no need to specify exclusively.
variable "common" {}
output "common" {
  value = var.common
}

# Data in TF is in 3 types;
# 1. strings - need to quotes tF supports only double quotes
# 2. numbers
# 3. Boolean