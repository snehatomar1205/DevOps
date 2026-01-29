module "dev" {
  source = "./infrastructure"
  env = "dev"

  vpc_config = {
      cidr = ""
      name = "my-vpc"  
    }

  subnet_config = [
      {
        name = "subnet-1"
        cidr = ""
        az = "ap-south-1a"
      },
      {
        name = "subnet-2"
        cidr = ""
        az = "ap-south-1b"
      },
      {
        name = "subnet-3"
        cidr = ""
        az = "ap-south-1b"
      }]

  ec2_config = [
    {
      name = "dev-1"
      ami = ""
      instance_type = "t2.micro"
      storage_size = 12
    },
    {
      name = "dev-2"
      ami = ""
      instance_type = "t2.micro"
      storage_size = 12
    },
    {
      name = "dev-3"
      ami = ""
      instance_type = "t2.micro"
      storage_size = 12
    }] 
}

output "dev_infra_ec2_public_ips" {
  value = module.dev.ec2_public_ips
}


