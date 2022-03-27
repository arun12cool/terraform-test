
resource "aws_s3_bucket" "self" {
  bucket = var.bucket_name

}


output "bucket_name" {
  value = aws_s3_bucket.self.id
}

provider "aws" {
  region = "us-west-2"
}

variable "region" {
  type        = string
  default     = "us-west-2"
  description = "Region where to deploy"
}

variable "bucket_name" {
  type        = string
  description = "Unique name for the bucket"
  default = "iiht-test-bucket"
}