variable "role_name" {}
variable "assume_role_policy" {}
variable "policy_arns" { 
  type = list(string) 
  default = [] 
}

