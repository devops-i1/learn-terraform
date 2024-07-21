# Loop is all about looping the module or resource

resource "null_resource" "test" {
  count = 10
}
