resource "aws_s3_object" "index" {
  bucket        = aws_s3_bucket.website.id
  key           = var.index_html
  source        = var.index_html
  content_type  = "text/html"
}

resource "aws_s3_object" "error" {
  bucket        = aws_s3_bucket.website.id
  key           = var.error_html
  source        = var.error_html
  content_type  = "text/html"
}