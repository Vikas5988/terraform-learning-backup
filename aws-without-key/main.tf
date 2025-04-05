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
#	access_key = "AKIAZI2LIGBS2PDT7Q36"
#	secret_key = "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"
}

resource "aws_instance" "vm1"{
	ami = "ami-04b70fa74e45c3917"
	instance_type = "t2.micro"
	tags = {
	Name = "server2"
}
}
