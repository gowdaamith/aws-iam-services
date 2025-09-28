provider "aws" {
  region = var.region
}

# -------------------------------
# Policy Module
# -------------------------------
module "s3_readonly_policy" {
  source          = "./modules/policy"
  policy_name     = "S3ReadOnlyPolicy"
  description     = "Read-only access to S3"
  policy_document = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:ListBucket","s3:GetObject"]
        Resource = "*"
      }
    ]
  })
}

# -------------------------------
# Group Module
# -------------------------------
module "dev_group" {
  source      = "./modules/group"
  group_name  = var.group_name
  policy_arns = [module.s3_readonly_policy.policy_arn]
}

# -------------------------------
# User Module
# -------------------------------
module "dev_user" {
  source                  = "./modules/user"
  user_name               = var.user_name
  path                    = var.user_path
  groups                  = [module.dev_group.group_name]
  create_console_user     = var.create_console_user
  password                = var.user_password
  password_reset_required = true
}

# -------------------------------
# Role Module
# -------------------------------
module "dev_role" {
  source             = "./modules/role"
  role_name          = var.role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = { AWS = module.dev_user.user_arn }
        Action    = "sts:AssumeRole"
      }
    ]
  })
  policy_arns = ["arn:aws:iam::aws:policy/AdministratorAccess"]
}
