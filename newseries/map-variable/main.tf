variable "userage" {
  type = map(number)
  default = {
    keyur = 33
    birva = 30
  }
}

output "ageofuser" {
  value = "my name is keyur and my age is ${lookup(var.userage, "keyur" )}"
}