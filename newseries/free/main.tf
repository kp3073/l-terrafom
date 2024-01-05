variable "names" {
  type = list(string)
  default = ["rohan","oreo","vrunda"]
}

output "firstname" {
  value = "first name is ${upper(var.names[1])}"
}