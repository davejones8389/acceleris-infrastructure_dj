terraform {
  required_version = "1.3.6"

  backend "s3" {
    bucket   = "acceleris-site.tfstate-bucket"
    key      = "environment/terraform.tfstate"
    region   = "eu-west-1"
    role_arn = "arn:aws:iam::251818369768:role/terraform_atlantis_access"
  }
} 