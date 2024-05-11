variable "ami_id" {
    description = "variable for amazon linux 2 ami id"
    type = string
    default = "ami-07caf09b362be10b8"
}

variable "az" {
    description = "variable for amazon linux 2 availazbility zone"
    type = string
    default = "us-east-1a"
}

variable "itype" {
    description = "variable for amazon linux 2 instance type"
    type = string
    #default = "t2.micro"
}

variable "key" {
    description = "variable for amazon linux 2 key"
    type = string
    default = "sshkey12"
}

variable "ec2name" {
    description = "variable for amazon linux 2 ec2name"
    type = string
    default = "tfvm1"
}

variable "user1" {
    description = "variable for amazon linux 2 user name"
    type = string
    default = "atlas1"
}

variable "user2" {
    description = "variable for amazon linux 2 user name"
    type = string
    default = "atlas2"
}