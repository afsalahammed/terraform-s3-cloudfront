resource "aws_cloudfront_origin_access_identity" "oai" {
  comment = "Origin Access Identity for CloudFront to access S3"
}