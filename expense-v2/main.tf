resource "aws_instance" "frontend" {
  for_each      = var.instance_types
  ami           = var.ami
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = var.security_group
  tags = {
    Name = each.key
  }
}


variable "ami" {
  default = "ami-041e2ea9402c46c32"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "security_group" {
  default = ["sg-050c53e3ec8b8a873"]
}


variable "instance_types" {
  default = {

    frontend = {
      instance_type = "t3.small"
    }

    mysql = {
      instance_type = "t3.micro"
    }

    frontend = {
      instance_type = "t3.small"
    }

  }
}