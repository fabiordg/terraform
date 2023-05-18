resource "aws_s3_bucket" "tfstateiacwave" {
  bucket = "iacwave-tfstate-bucket"
  
  tags = {
    Name        = "tfstate-bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning_tfstateiacwave" {
  bucket = aws_s3_bucket.tfstateiacwave.id
  versioning_configuration {
    status = "Enabled"
  }
}



