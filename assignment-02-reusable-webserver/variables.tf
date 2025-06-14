variable "aws_region" {
  type = string
  default = "ap-south-1"
  description = "this is the region defined for the aws acc."
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "Instance type for web server"
}

variable "web_server_ami" {
  default = "ami-0b09627181c8d5778"
  type = string
  description = "AMI ID of a amazon linux instance"
}