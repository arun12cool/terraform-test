resource "aws_s3_bucket" "self" {
  bucket = var.bucket_name

}


output "bucket_name" {
  value = aws_s3_bucket.self.id
}

variable "bucket_name" {
  type        = string
  description = "Unique name for the bucket"
}