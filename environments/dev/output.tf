output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "ec2_key_name" {
  description = "The SSH key pair name used for the EC2 instance"
  value       = module.ec2.key_name
}