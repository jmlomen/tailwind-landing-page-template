resource "aws_iam_policy" "terraform_deploy_policy" {
  name        = "TerraformDeployPolicy"
  description = "Least-privilege policy for GitHub OIDC Terraform deployments"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      # --- Required for S3 remote state ---
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:PutObject",
          "s3:DeleteObject",
          "s3:ListBucket",
          "s3:GetBucketLocation"
        ]
        Resource = [
          "arn:aws:s3:::tfstate-jmlomen-main",
          "arn:aws:s3:::tfstate-jmlomen-main/*"
        ]
      },

      # --- Required for GitHub OIDC role assumption ---
      {
        Effect = "Allow"
        Action = [
          "sts:AssumeRoleWithWebIdentity"
        ]
        Resource = "*"
      },

      # --- Add your actual Terraform-managed AWS services here ---
      # s3 bucket creation:
      {
        Effect = "Allow"
        Action = [
          "s3:CreateBucket",
          "s3:PutBucketVersioning",
          "s3:PutBucketEncryption",
          "s3:PutBucketAcl",
          "s3:PutBucketPolicy",
          "s3:GetBucketPolicy"
        ]
        Resource = "*"
      }
    ]
  })
}
