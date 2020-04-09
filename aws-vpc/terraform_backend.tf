terraform {
  backend "s3" {
    encrypt        = true
    bucket         = ""
    dynamodb_table = "tf-state-lock"
    region         = "ap-south-1"
    key            = ""
  }
}
