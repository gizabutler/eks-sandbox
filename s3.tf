
module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"

  bucket_name = local.cluster_name
  acl         = "public-read"

  tags = {
    Name        = "test"
    Environment = "test"
  }
}