variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"
}

variable "user_name" {
  description = "IAM user name"
  type        = string
  default     = "DevUser"
}

variable "user_path" {
  description = "Path for IAM user"
  type        = string
  default     = "/developers/"
}

variable "create_console_user" {
  description = "Whether to create console login for user"
  type        = bool
  default     = true
}

variable "user_password" {
  description = "Password for console login (if create_console_user = true)"
  type        = string
  default     = "MySecurePassword123!"
}

variable "group_name" {
  description = "IAM group name"
  type        = string
  default     = "DevGroup"
}

variable "role_name" {
  description = "IAM role name"
  type        = string
  default     = "DevAssumeRole"
}
