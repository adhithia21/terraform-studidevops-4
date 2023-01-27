inputs = {
    region = "ap-northeast-1"
    access_key = "AKIA4VLC6RHPXVF6JOBF"
    secret_key = "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"
    name = "${basename(get_terragrunt_dir())}"
    ami = "ami-0cd7ad8676931d727"
    key_name = "adhithia-key"
    vpc_security_group_ids = ["sg-0f9a56cd28a201173"]
}