# condition in terraform is all about choosing the value
# condition ? true value : false value

#resource "aws_instance" "test" {
#  ami           = "ami-041e2ea9402c46c32"
#  instance_type = var.instance_type == "t2.*" ? "t3.micro" : var.instance_type
#}
#variable "instance_type" {}

output "number" {
  value = var.number > 10 ? "number is > 10" : "number is <= 10"
}
variable "number" {}