output "website_endpoint" {
  description = "This is the URL of the static website"
  value       = aws_s3_bucket_website_configuration.aws_s3_buck.website_endpoint

}