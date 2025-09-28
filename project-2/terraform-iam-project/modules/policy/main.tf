resources "aws_iam_policy""new_policy"{
    name=var.policy_name
    description=var.description
    policy=var.policy_document
}
