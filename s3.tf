module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "${local.app_name}-backup"
  
  control_object_ownership = true
  object_ownership = "BucketOwnerPreferred"
  block_public_acls = false
  block_public_policy = false
  restrict_public_buckets = false
  ignore_public_acls = false
  acl = "public-read"
  force_destroy = true


  versioning = {
    enabled = true
  }
}