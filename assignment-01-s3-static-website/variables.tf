variable "aws_region" {
  type = string
  default = "ap-south-1"
}

variable "aws_bucket" {
  type = string
  default = "vaibhav-static-site-bucket"
  description = "AWS S3 bucket for hosting the static website"
}
