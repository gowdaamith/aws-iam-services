variable "user_name" {}
variable "path" { default = "/" }
variable "groups" { type = list(string) default = [] }
variable "create_console_user" { type = bool default = false }
variable "password" { type = string default = "" }
variable "password_reset_required" { type = bool default = true }
