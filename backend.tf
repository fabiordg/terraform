terraform {
  backend "s3" {
    bucket = "iacwave-tfstate-bucket"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
