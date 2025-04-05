module "mywebserver"{
	source = "./modules/webserver"
	image_id = "abcd1234"
	instance_type = "t2.small"

}
