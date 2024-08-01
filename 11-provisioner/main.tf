resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }

    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }
}

data "aws_security_group" "selected" {
  name = "allow-all"
}

# Decouple instance for following instances......

# 1. If provisioner fails we don't want instance to re-create my instance.
# 2. Requirements emerge in a way that we need to re run the provisioner again and again (meaning that provisioning commands we need to run again and again).

resource "aws_instance" "test1" {
  ami           = "ami-041e2ea9402c46c32"
  instance_type = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
}
resource "null_resource" "provisioner" {

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.test1.public_ip
    }

    inline = [
      "dnf install nginx -y",
      "sudo systemctl start nginx"
    ]
  }

}
