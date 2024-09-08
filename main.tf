module "vpc" {
  source = "./modules/vpc"

  vpc_tags = {
    Iac  = "True"
    Name = "challenge-vpc"
  }
}

module "ec2" {
  source = "./modules/ec2"

  security_group_id = module.vpc.security_group_id
  subnet_id         = module.vpc.public_subnet_id

  depends_on = [
    module.vpc
  ]
}
