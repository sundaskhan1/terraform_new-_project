variable "instance_type" {}
variable "ami_id" {}
variable "sg_id" {}
variable "key_name" {
  description = "The name of the SSH key pair to attach to the instance"
  type        = string
  default     = "soch-key-trf"
}