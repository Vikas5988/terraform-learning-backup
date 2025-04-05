variable "filename" {
	default = "/root/terraform/terraform-variable/devops-automated.txt"
}

variable "content"{
	default = " This is auto generated from a variable"
}

#variable "devops_op_trainer"{}

variable "content_map"{
type=map
default={
"content1" = "this is content 1"
"content2" = "this is content2"
}
}

variable "file_list"{
type = list
default = ["/root/terraform/terraform-variable/file1.txt","/root/terraform/terraform-variable/file2.txt"]
}

variable "aws_ec2_object"{
  type = object({
    name = string
    instances = number
    keys = list(string)
    ami = string

})

default = {
	name = "test_ec2_instance"
	instances = 4
	keys = ["key1.pem","key2.pem"]
	ami = "ubuntu-asdf12"

}
}

variable "no_of_students"{}
