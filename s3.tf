resource "aws_s3_bucket" "s3cloudfronsite" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_website_configuration" "s3cloudfronsite" {
  bucket = aws_s3_bucket.s3cloudfronsite.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "cloudfront_access" {
  bucket = aws_s3_bucket.s3cloudfronsite.id
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect    = "Allow",
      Principal = { AWS = aws_cloudfront_origin_access_identity.oai.iam_arn },
      Action    = "s3:GetObject",
      Resource  = "${aws_s3_bucket.s3cloudfronsite.arn}/*"
    }]
  })
}
