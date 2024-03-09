variable "region" {
  type        = string
  description = "Region for the resource to deploy"
}

variable "prefix" {
  description = "The prefix name of customer to be displayed in AWS console and resource"
  type        = string
}

variable "description" {
  description = "(Optional) Description of the launch template."
  type        = string
  default     = null
}

variable "name" {
  description = "The Name of luanch teamplate"
  type        = string
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance(s) will be EBS-optimized"
  type        = bool
  default     = null
}

variable "ami_id" {
  description = "The AMI from which to launch the instance. If not supplied, EKS will use its own default image"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The type of the instance"
  type        = string
  default     = null
}

# Tags
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}