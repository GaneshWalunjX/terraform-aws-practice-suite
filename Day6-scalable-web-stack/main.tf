module "ec2" {
  source                    = "./modules/ec2"
  ami_id                    = "ami-0f58b397bc5c1f2e8" 
  instance_type         = "t2.micro"
  subnet_id               = module.vpc.public_subnet_ids[0]
  ec2_sg_id               = "sg-xxxxxxxx" 
  key_name              = "ec2-key"  
  instance_name      = "day6-ec2"
  environment         = var.environment
  target_group_arn  = module.alb.target_group_arn
}

resource "aws_vpc" "main" {
  cidr_block                      = var.vpc_cidr
  enable_dns_support      = true
  enable_dns_hostnames = true

  tags = {
    Name            = var.vpc_name
    Environment = var.environment
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name            = "${var.vpc_name}-igw"
    Environment = var.environment
  }
}

resource "aws_subnet" "public" {
  count                                 = length(var.public_subnet_cidrs)
  vpc_id                                = aws_vpc.main.id
  cidr_block                          = var.public_subnet_cidrs[count.index]
  map_public_ip_on_launch = true
  availability_zone                = var.azs[count.index]

  tags = {
    Name            = "${var.vpc_name}-public-${count.index}"
    Environment = var.environment
  }
}

resource "aws_subnet" "private" {
  count                  = length(var.private_subnet_cidrs)
  vpc_id                 = aws_vpc.main.id
  cidr_block           = var.private_subnet_cidrs[count.index]
  availability_zone = var.azs[count.index]

  tags = {
    Name            = "${var.vpc_name}-private-${count.index}"
    Environment = var.environment
  }
}
