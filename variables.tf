variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "s3cloudfrontsite"
}

variable "index_html" {
  description = "Path to the index.html file"
  type        = string
  default     = "index.html"
}

variable "error_html" {
  description = "Path to the error.html file"
  type        = string
  default     = "error.html"
}

variable "cloudfront_price_class" {
  description = "CloudFront price class"
  type        = string
  default     = "PriceClass_100"
}

variable "geo_restriction" {
  description = "CloudFront geo restriction locations"
  type        = list(string)
  default     = ["IN"]
}