inputs = {
    region = "ap-northeast-1"
    shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
    profile = "default"
    name = "${basename(get_terragrunt_dir())}"
    ami = "ami-0cd7ad8676931d727"
    key_name = "adhithia"
    vpc_security_group_ids = ["sg-0f9a56cd28a201173"]
}