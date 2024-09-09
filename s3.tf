resource "aws_s3_bucket" "glue_bucket_matthew" {
    bucket = "glue-bucket-matthew"
    versioning{
        enabled = true
    }
     tags = {
         Env = "Terraform"
 }
}