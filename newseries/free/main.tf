#variable "names" {
#
#
#}
#
#output "second" {
#  value = "first name is ${var.names}"
#}

output "filelocation" {
  value = file("${path.module}/rnd.txt")
}