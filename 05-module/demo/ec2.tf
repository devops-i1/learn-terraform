resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  tags = {
    Name = var.Name
  }
}

variable "Name" {}