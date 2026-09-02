resource "aws_s3_bucket" "sandbox_test" {
  bucket = "sandbox-terraform-test-715831355634"
}

terraform {
  backend "s3" {
    bucket         = "tfstate-jmlomen-main"
    key            = "tailwind-landing-page-template/terraform.tfstate"
    region         = "ap-southeast-2"
    encrypt        = true
  }
}
