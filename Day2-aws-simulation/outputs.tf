output "instance_id" {
  description = "ID of the ec2 instance"
  value          = aws_instance.ganesh_ec2.id
}