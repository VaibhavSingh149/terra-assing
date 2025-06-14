resource "aws_s3_bucket" "aws_s3_buck" {
  bucket = var.aws_bucket
}

resource "aws_s3_bucket_public_access_block" "aws_s3_buck" {
  bucket = aws_s3_bucket.aws_s3_buck.id
  block_public_acls = false
  block_public_policy = false
  ignore_public_acls = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "aws_s3_buck" {
  bucket = aws_s3_bucket.aws_s3_buck.id
  
  index_document {
    #index.html file's refrence
    suffix = "index.html"
  }
}

#bucket policy 
data "aws_iam_policy_document" "aws_s3_buck" {
  statement {
    actions = ["s3:GetObject"]
    resources = ["${aws_s3_bucket.aws_s3_buck.arn}/*"]
  
    principals {
        type = "AWS"
        identifiers = ["*"]
    }
  }
}

resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.aws_s3_buck.id
  policy = data.aws_iam_policy_document.aws_s3_buck.json
}

resource "aws_s3_object" "index_html" {
    bucket = aws_s3_bucket.aws_s3_buck.id
    key = "index.html"
    source = "${path.module}/index.html"
    content_type = "text/html"
}
