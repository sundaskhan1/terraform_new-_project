terraform {
  backend "s3" {
    bucket = "project-soch-s3bucket" # Replace with your bucket name
    key    = "dev/terraform.tfstate"
    region = "us-east-2"
  }
}