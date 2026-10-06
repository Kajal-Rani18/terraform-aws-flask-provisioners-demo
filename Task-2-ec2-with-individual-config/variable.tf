variable "ec2_insatances" {
  description = "Map of the ec2 instances with different configuration"
  type = map(object({
    instance_type = string
    ami           = string
    volume_size   = number
    environment   = string
  }))

  default = {
    "web_server" = {
      instance_type = "t3.micro"
      ami           = "ami-0045d7fc2ad003464"
      volume_size   = "10"
      environment   = "test"
    }

    "app_server" = {
      instance_type = "t3.small"
      ami           = "ami-0045d7fc2ad003464"
      volume_size   = "15"
      environment   = "prod"
    }

    "db_server" = {
      instance_type = "t8i.micro"
      ami           = "ami-0045d7fc2ad003464"
      volume_size   = "20"
      environment   = "dev"
    }
  }
}
