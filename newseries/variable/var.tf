variable "name" {}

output "thiswillprintvariable" {
  value = "my name is :${var.name}"
}