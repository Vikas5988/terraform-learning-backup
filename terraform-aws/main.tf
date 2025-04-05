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
	access_key = "AKIAZI2LIGBS2PDT7Q36"
	secret_key = "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"
}

resource "aws_instance" "servers"{
	count = 2
	ami = "ami-04b70fa74e45c3917"
	instance_type = "t2.micro"
	tags = {
	Name : "server1"
}
}


resource "aws_s3_bucket" "my_s3_tf_bucket"{
	bucket = "vikas-terra-bucket-27042024"
	tags = {
	name = "Terraform Bucket 2024"
	Environment = "Dev"
}
}


output "ec2_public_ips"{
	value = aws_instance.servers[*].public_ip
}

