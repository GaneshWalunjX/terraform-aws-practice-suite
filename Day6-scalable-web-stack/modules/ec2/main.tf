resource "aws_instance" "app_server" {
  ami                                        = var.ami_id
  instance_type                        = var.instance_type
  instance_name                      = var.instance_name
  subnet_id                              = var.subnet_id
  vpc_security_group_ids         = [var.ec2_sg_id]
  associate_public_ip_address = true
  key_name                              = var.key_name

  tags = {
    Name            = var.instance_name
    Environment = var.environment
  }
}

  resource "aws_lb_target_group_attachment" "tg_attachment" {
    target_group_arn = var.target_group_arn
    target_id              = aws_instance.app_server.id
    port                     = 80
  }
