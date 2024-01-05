variable "userage" {
  type = map(number)
  default = {
    keyur = 33
    birva = 30
  }
}

output "ageofuser" {
  value = "my name is Birva and my age is ${lookup(var.userage, "birva" )}"
}