
variable "project_name" {
  description = "Project name"
  type        = string
}

variable "ami_id" {
  description = "Amazon Machine Image ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "web_security_group_id" {
  description = "Web EC2 Security Group ID"
  type        = string
}

variable "common_tags" {
  description = "Common resource tags"
  type        = map(string)
  default     = {}
}

variable "min_size" {
  description = "Minimum number of EC2 instances"
  type        = number
}

variable "desired_capacity" {
  description = "Desired number of EC2 instances"
  type        = number
}

variable "max_size" {
  description = "Maximum number of EC2 instances"
  type        = number
}

variable "public_subnet_ids" {
  description = "Public subnet IDs for Auto Scaling Group"
  type        = list(string)
}

variable "target_group_arn" {
  description = "ALB Target Group ARN"
  type        = string
}
