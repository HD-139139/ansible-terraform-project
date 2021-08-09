output "public_ip" {
  description = "Public IP instance"
  value       = aws_instance.my_instance.public_ip
}
