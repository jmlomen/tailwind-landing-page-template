resource "aws_s3_bucket" "sandbox_test" {
  bucket = "sandbox-terraform-test-715831355634"
}

resource "aws_s3_bucket" "sandbox_deploy_test" {
  bucket = "sandbox-terraform-deploy-test-715831355634"
}
