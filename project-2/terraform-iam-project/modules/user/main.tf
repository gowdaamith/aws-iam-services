resources "aws_iam_user""new_user"{
    name=var.user_name
    path=var.path
}

resources "aws_iam_user_group_membership"new_user"{
    user=aws_iam_user.new_user.name
    group=var.group
}

resources "aws_iam_user_login_profile""new_user"{
    count= var.create_console_user ? 1:0
    user  =aws_iam_user.new_user.name
    password=var.password
    password_reset_required=var.password_reset_required
} 

