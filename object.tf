resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.s3cloudfronsite.id
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.s3cloudfronsite.id
  key    = "error.html"
  source = "error.html"
  content_type = "text/html"
}
