variable "user_name"{ }
variable "path" {default= "/"}
variable "group"{type=list(string) default= []}
varilable "create_cosole_user" { type=bool default=" "}
variable "password_reset_required"{type=bool default=true}
