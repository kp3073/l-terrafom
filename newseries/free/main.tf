variable "names" {
  type = list(string)
  default = ["rohan","oreo","vrUNda"]
}

output "second" {
  value = "first name is ${title(var.names[1])}"
}

output "firstname" {
  value = "first name is ${upper(var.names[0])}"
}

output "third" {
  value = "first name is ${lower(var.names[1])}"
}