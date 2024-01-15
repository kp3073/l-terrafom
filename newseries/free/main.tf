#variable "names" {
#
#
#}
#
#output "second" {
#  value = "first name is ${var.names}"
#}

output "filelocation" {
  value = "${path.module}/rnd.txt"
}