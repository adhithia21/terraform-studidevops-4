variable "shared_credentials_files" {
  type = list
}

variable "profile" {
  type = string
}

variable "region" {
  type = string
}

variable "name" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list
}