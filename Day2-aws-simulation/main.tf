resource "aws_instance" "ganesh_ec2" {
ami                  = var.ami_id
instance_type  = var.instance_type

tags  = {
  name = "Ganesh-Terraform-EC2"
}
 }