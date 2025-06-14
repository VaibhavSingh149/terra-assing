variable "ami_id" {
  type = string
  default = "ami-0b09627181c8d5778"
  description = "this is the ami id for amazon linux"
}

variable "instance_type" {
  type = string
  description = "EC2 instance type"
}

variable "subnet_id" {
  type = string
  description = "subnet id to launch the instance"
}

variable "security_group_ids" {
  type = list(string)
  description = "Lists of security group ids"
}