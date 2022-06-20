provider "aws" {
  region = "eu-west-2"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module vpc {
    source = "./modules/vpc/"
    
}

module db {
    source = "./modules/db"
    
    my_subnet_group  = module.vpc.private_subnet_group
    my_security_group = module.vpc.security_group_id

    my_private_subnet_group = module.vpc.private_subnet_group
    
}

module "webserver" {  
    source = "./modules/webserver"

    my_subnet_id = module.vpc.public_subnet_id
    my_security_group_id = module.vpc.security_group_app_id
    get_public_ip = module.webserver.public_ip_ad
    get_db_endpoint = module.db.db_endpoint
    username = "</>"
    password = "</>"
    <database name variable> = "</>"
    database_instance = module.db.instance_name

    
    
}


