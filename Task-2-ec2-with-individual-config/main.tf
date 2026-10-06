resource "aws_instance" "servers" {
  for_each      = var.ec2_insatances
  ami           = each.value.ami
  instance_type = each.value.instance_type

  root_block_device {
    volume_size           = each.value.volume_size
    volume_type           = "gp3"
    delete_on_termination = true
    encrypted             = true
  }

  tags = {
    name        = each.key
    environment = each.value.environment
  }
}