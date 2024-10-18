variable "vpc_cidr" {
  description = "cidr range for vpc"
}

variable "sub1_cidr" {
  description = "cidr range for sub1"
}

variable "sub2_cidr" {
  description = "cidr range for sub2"
}

variable "route_cidr" {
  description = "cidr for route table"
}

variable "my_ins_con1" {
  description = "info abt instances"
  type        = map(string)
}

variable "my_ins_con2" {
  description = "info abt instances"
  type        = map(string)
}