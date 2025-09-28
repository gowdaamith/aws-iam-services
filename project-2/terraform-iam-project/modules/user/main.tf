resource "aws_iam_user" "this" {
  name = var.user_name
  path = var.path
}

resource "aws_iam_user_group_membership" "this" {
  user   = aws_iam_user.this.name
  groups = var.groups
}

resource "aws_iam_user_login_profile" "this" {
  count                   = var.create_console_user ? 1 : 0
  user                    = aws_iam_user.this.name
  password_reset_required = var.password_reset_required
}
