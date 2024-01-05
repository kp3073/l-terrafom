variable "userage" {
  type = map(number)
  default = {
    "keyur" = 33
    "birva" = 30
  }
}
variable "username" {
  type = string
}

output "ageofuser" {
  value = "my name is $(var.username} and my age is ${lookup(var.userage, "$(var.username}" )}"
}