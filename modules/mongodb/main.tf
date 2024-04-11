module "mongodb_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "mongodb-service"
  description = "mongdb"
  vpc_id      = var.vpc_id

  ingress_cidr_blocks      = ["10.10.0.0/16"]
#   ingress_rules            = ["https-443-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 27017
      to_port     = 27017
      protocol    = "tcp"
      description = "mongdb port"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      rule        = "ssh-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "mongodb"
  ami = var.ami_id
  instance_type          = "t2.medium"
  key_name               = "my_aws"
  monitoring             = true
  vpc_security_group_ids = ["${module.mongodb_sg.security_group_id}"]
  subnet_id              = var.subnet_id
  associate_public_ip_address = true
  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
