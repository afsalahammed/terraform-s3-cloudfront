output "s3_bucket_name" {
  description = "The name of the S3 bucket hosting the static website"
  value       = aws_s3_bucket.website.id
}

output "s3_website_url" {
  description = "The S3 website endpoint URL"
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}

output "cloudfront_distribution_id" {
  description = "The ID of the CloudFront distribution"
  value       = aws_cloudfront_distribution.cdn.id
}

output "cloudfront_url" {
  description = "The CloudFront distribution URL"
  value       = "https://${aws_cloudfront_distribution.cdn.domain_name}"
}