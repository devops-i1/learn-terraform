module "demo-1" {
  source = "./demo"
  Name = "demo-1"
  instance_type = "t3.small"
}

module "demo-2" {
  source = "./demo"
  Name = "demo-2"
  instance_type = "t3.micro"
}