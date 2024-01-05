variable "names" {
  type = list(string)
}

output "firstname" {
  value = "first name is ${var.names[0]}"
}