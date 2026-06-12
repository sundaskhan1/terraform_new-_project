terraform {
  backend "s3" {
    bucket         = "project-soch-s3bucket" 
    key            = "dev/terraform.tfstate"     
    region         = "us-east-2"                 
    dynamodb_table = "terraform-lock"           
    encrypt        = true
  }
}
