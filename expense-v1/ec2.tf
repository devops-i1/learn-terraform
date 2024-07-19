resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = "[sg-050c53e3ec8b8a873]"
  tags = {
    Name = frontend
  }
}



resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = "[sg-050c53e3ec8b8a873]"
  tags = {
    Name = backend
  }
}



resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.micro"
  vpc_security_group_ids = "[sg-050c53e3ec8b8a873]"
  tags = {
    Name = mysql
  }
}