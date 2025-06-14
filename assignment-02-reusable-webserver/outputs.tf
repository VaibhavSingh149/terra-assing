output "web_server_url" {
  description = "The url for the web server"
  value = module.my_web_server.public_ip
}