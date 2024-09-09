resource "aws_s3_bucket" "glue_bucket_matthew" {
    bucket = "matthew-test-cd"
    versioning{
        enabled = true
    }
     tags = {
         Env = "Terraform"
 }
}