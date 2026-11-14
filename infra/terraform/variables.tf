variable "name_prefix" {
  description = "Prefix used to name the VPC resources."
  type        = string
  default     = "tailwind-landing-page"
}

variable "vpc_cidr" {
  description = "IPv4 CIDR range for the application VPC."
  type        = string
  default     = "10.20.0.0/16"
}
