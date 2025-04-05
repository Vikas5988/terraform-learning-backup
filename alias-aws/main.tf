terraform{
	required_providers{
	aws = {
	source  = "hashicorp/aws"
      version = "~> 5.0"
  }	
 }
}

provider aws {
	region = "us-east-1"
}

provider aws {
	alias = "west"
        region = "us-west-1"
}



resource "aws_instance" "servers"{
	ami = "ami-04b70fa74e45c3917"
	instance_type = "t2.micro"
	tags = {
	Name : "server1"
}
}


resource "aws_instance" "server1"{
	provider = "aws.west"
       ami = "ami-09021cbd462419e4c"
        instance_type = "t2.micro"
        tags = {
        Name : "server1"
}
}
