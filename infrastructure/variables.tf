
variable "region" {
  type        = string
  default     = "eu-west-3"
}

variable "ami" {
  description = "Ubuntu 22.04"
  type = string
  default = "ami-01d21b7be69801c2f"
}

variable "default_vpc" {
  type = string
  default = "vpc-a34ebccb"
}

variable "availability_zone" {
  type        = string
  default     = "eu-west-3a"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}