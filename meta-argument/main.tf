terraform {
	required_providers {
		aws = {
		source = "hashicorp/aws"
		version =  "~> 5.0"
}
}
		required_version = ">=1.6"
}


provider "aws" {
	region = "us-east-1"
}

locals {
	instance_name = {"abc":"ami-04e5276ebb8451442","def":"ami-04b70fa74e45c3917","ghi":"ami-0f496107db66676ff"}
}

resource "aws_instance" "servers"{
	for_each = local.instance_name
        ami = each.value
        instance_type = "t2.micro"
        tags = {
        Name : each.key
}
}

