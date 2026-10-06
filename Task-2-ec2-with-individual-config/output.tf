# outputs.tf
output "instance_ids" {
  value = {
    for k, v in aws_instance.servers : k => v.id
  }
}

output "instance_public_ips" {
  value = {
    for k, v in aws_instance.servers : k => v.public_ip
  }
}

output "instance_private_ips" {
  value = {
    for k, v in aws_instance.servers : k => v.private_ip
  }
}

output "availability_zones" {
  value = {
    for k, v in aws_instance.servers : k => v.availability_zone
  }
}
