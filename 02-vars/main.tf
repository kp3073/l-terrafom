variable "fruit" {
  default = "apple"
}

variable "fruits" {
  default = ["apple" , "banana" ]
}

variable "price" {
  default = {
    apple = 10
    banana = 20
  }
}


output "fruit_price" {
  value = "price of apple = ${var.price["apple"] }"
}