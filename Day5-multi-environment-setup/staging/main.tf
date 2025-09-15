module "web_ec2" {
  source                 = "../../day3-ec2-modularization/modules/ec2"
  ami_id                 = var.ami_id
  instance_type      = var.instance_type
  instance_name    = var.instance_name
  environment       = var.environment
}
