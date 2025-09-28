resources"aws_iam_role""new_role"{
    name=var.role_name
    assume_role_policy=var.assume_role_policy
}

resources "aws_iam_role_policy_attachment""new_role_policy"{
    for_each=toset(var.policy.arn)
    role=aws_iam_role.this.name
    policy_arn=each.value
    
}