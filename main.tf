resource "null_resource" "non_cbd" {}

module "m1" {
  for_each = {}
  source   = "./module"
  foo      = null_resource.non_cbd.id
}
