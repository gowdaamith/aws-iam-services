variable "group_name" {}
variable "path" { default = "/" }
variable "policy_arns" { 
  type = list(string)  
  default = [] 
}
