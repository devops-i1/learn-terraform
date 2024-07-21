resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = var.instance_type
  tags = {
    Name = var.Name
  }
}

variable "Name" {}
variable "instance_type" {}