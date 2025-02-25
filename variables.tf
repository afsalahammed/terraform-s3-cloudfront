variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "ap-south-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "s3cloudfrontsite"
}