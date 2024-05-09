variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  type    = bool
  default = true
}
variable "aws_region" {
  type        = string
  description = "Region for AWS Resources"
  default     = "ap-south-1"
}
variable "common_tags" {
  type    = map(any)
  default = {}
}
variable "vpc_tags" {
  type    = map(any)
  default = {}
}
variable "project_name" {
  type = string
}
variable "environment" {
  type = string
}
variable "public_subnet_cidr" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidr) == 2
    error_message = "please give 2 public valid subnet"
  }
}
variable "public_subnet_tags" {
  default = {}
}
variable "igw-tags" {
  default = {}
}
variable "private_subnet_cidr" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "please give 2 private valid subnet"
 }
}
variable "private_subnet_tags" {
  default = {}
}

