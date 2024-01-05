variable "names" {
  type = list(string)
  default = ["rohan","oreo","vrunda"]
}

output "firstname" {
  value = "first name is ${var.names[0]}"
}