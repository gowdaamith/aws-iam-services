variable "group_name" {}
variable "path" { default = "/" }
variable "policy_arns" { 
  type = map(string)  
  default = {}
}
