resource "local_file" "devops"{
	#filename = "/root/terraform/terraform-variable/devops_test.txt"
	filename = var.file_list[0]
	content = var.content_map["content1"] 
}


resource "local_file" "devops-var"{
	#filename = var.filename
	filename = var.file_list[1]
	content = var.content_map["content2"]
}


#output "devops_op_trainer"{
#value = var.devops_op_trainer
#}


output "aws_ec2_instances" {
#value = var.aws_ec2_object.instances
value = var.aws_ec2_object
}


output "tf_batch_students"{
value = var.no_of_students
}

