output "instance_public_ip" {
  description = "Public IP address of the Flask EC2 instance"
  value       = aws_instance.myapp.public_ip
}

output "flask_url" {
  description = "URL to access the Flask application"
  value       = "http://${aws_instance.myapp.public_ip}:80"
}

