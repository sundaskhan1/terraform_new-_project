variable "aws_region" {}
variable "instance_type" {}
variable "ami_id" {}
variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}
variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}
 