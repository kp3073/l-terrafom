variable "age" {
  type = number
}

variable "username" {
  type = string
}

output "age_and_username" {
  value = "my name is ${var.username} and my age is ${var.age}"
}