# Declare the variable with value
variable "x" {
  default = 100
}

# Declare variable without value
#variable "y" {}

variable "y_list" {
  default = [1,2,3]
}

# print the variable
output "y_list" {
  value = var.y_list
}