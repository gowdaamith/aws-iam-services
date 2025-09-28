resources "aws_iam_group""new_group"{
    name=var.group_name
    path=var.path
}
resources "aws_iam_group_policy_attachment""group_policy"{
    for_each=toset(var.policy_arn)
    group =aws_iam_group.new_group.name
    policy_arn=each.value
}