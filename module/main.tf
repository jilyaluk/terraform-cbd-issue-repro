variable "foo" {
  type = string
}

resource "null_resource" "cbd" {
  triggers = {
    foo = var.foo
  }
  lifecycle {
    create_before_destroy = true
  }
}
