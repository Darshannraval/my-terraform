provider "aws" {
  region  = "us-east-2"
  access_key =  ""
  secret_key =  ""
}


# module "myec2" {
#   source   = "./ec2"
#   instance = "t2.micro"
#   az2 = "us-east-2b"
# }

module "rds"{
  source = "./rds" 
}