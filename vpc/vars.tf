variable "vpc_cidr" {
  default     = "10.0.0.0/21"
  description = "CIDR for the whole VPC"
}

variable "name" {}

variable "private_primary_subnet" {
    default = "10.42.1.0/24"
}
variable "private_secondary_subnet" {
    default = "10.42.2.0/24"
}
variable "private_tertiary_subnet" {
    default = "10.42.3.0/24"
}

variable "public_primary_subnet"{
    default = "10.42.4.0/24"
}
variable "public_secondary_subnet"{
    default = "10.42.5.0/24"
}
variable "public_tertiary_subnet"{
    default = "10.42.6.0/24"
}

variable "default" {
    default = "0.0.0.0/0"
}