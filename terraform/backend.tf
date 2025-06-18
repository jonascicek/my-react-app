terraform {
  backend "s3" {
    bucket         = var.tf_state_bucket
    key            = "terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = "terraform-lock"
  }
}
