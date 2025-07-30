resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_s3_bucket" "flask_bucket" {
  bucket = "flask-app-${random_id.suffix.hex}"
  force_destroy = true
}