output "role_name"{
    value=aws_iam_role.new_role.name
}
output "role_arn"{
    value=aws_iam_role.new_role.arn
}