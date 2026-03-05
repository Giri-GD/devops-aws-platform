resource "aws_s3_bucket" "terraform_state" {

  bucket = "gd-devops-terraform-state"

  tags = {
    Name = "TerraformState"
  }

}

resource "aws_s3_bucket_versioning" "versioning" {

  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }

}
