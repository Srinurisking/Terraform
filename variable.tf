variable "iname" {
type = list
default = ["myserver1", "myserver2", "myserver3"]
}

variable "az" {
type = list
default = ["eu-north-1a", "eu-north-1b", "eu-north-1b"]
}

variable "ports" {
type = list(number)
default = [22,8080,9000,80,5000,7000]
}
