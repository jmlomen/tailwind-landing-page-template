variable "name_prefix" {
  description = "Prefix used to name the VPC resources."
  type        = string
  default     = "tailwind-landing-page"
}

variable "aws_region" {
  description = "AWS region used for the application resources."
  type        = string
  default     = "ap-southeast-2"
}

variable "app_name" {
  description = "Name used for the ECS application resources."
  type        = string
  default     = "simple-next"
}

variable "image_tag" {
  description = "Container image tag to deploy."
  type        = string
  default     = "bootstrap"
}

variable "desired_count" {
  description = "Number of ECS tasks to run."
  type        = number
  default     = 1
}


variable "vpc_cidr" {
  description = "IPv4 CIDR range for the application VPC."
  type        = string
  default     = "10.20.0.0/16"
}
