resource "local_file" "my_work" {
  filename = var.filename
  content  = var.content
}

resource "random_pet" "my_work" {
  prefix    = var.prefix
  separator = "."
  length    = var.length
}
