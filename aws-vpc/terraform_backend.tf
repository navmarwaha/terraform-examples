terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "devops-mumbai"
    dynamodb_table = "tf-state-lock"
    region         = "ap-south-1"
    key            = "terraform-state/prod-vpc"
  }
}
