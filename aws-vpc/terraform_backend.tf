terraform {
 backend "s3" {
 encrypt = true
 bucket = "<your-s3-bucket>"
 dynamodb_table = "<your-dynamodb-table>"
 region = "ap-south-1"
 key = "<s3-bucket-subdir>/<keyname>"
 }
}
