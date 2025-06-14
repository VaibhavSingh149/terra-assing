output "id" {
  value = aws_instance.vai_bh.id
  description = "EC2 id"
}

output "public_ip" {
  value = aws_instance.vai_bh.public_ip
  description = "Public IP address of the EC2 instance"
}