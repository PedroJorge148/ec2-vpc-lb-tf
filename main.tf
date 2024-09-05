module "vpc" {
  source = "./modules/vpc"

  vpc_tags = {
    Iac  = "True"
    Name = "Project VPC"
  }
}
