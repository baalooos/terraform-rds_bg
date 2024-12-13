variable "region" {
  description = "The AWS region to deploy the resources in."
  default     = "eu-west-3" # Change the default as needed
}

variable "db_name" {
  default = "mydb"
}

variable "db_engine" {
  default = "mysql"
}

variable "db_version" {
  default = "8.0"
}

variable "db_instance" {
  default = "db.t3.micro"
}

variable "db_storage" {
  default = "10"
}

variable "db_username" {
  default = "foo"
}

variable "db_password" {
  default = "foobarbaz"
}

variable "db_enable_bg" {
  default = true
}

variable "subnet_ids" {
  default = ["subnet-00264e0b187ed44d0", "subnet-0147bc0620b7b4f7e", "subnet-02a4ebab3144711e1"]
}
