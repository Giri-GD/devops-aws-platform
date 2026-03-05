terraform {

  backend "s3" {
    bucket         = "gd-devops-terraform-state"
    key            = "platform/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }

}
