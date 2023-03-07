terraform state list

terraform state show 'module.s3.aws_s3_bucket.cdn'

terraform output [variable]

terraform plan -refresh-only

terraform apply -refresh-only

terraform state show 'aws_cloudfront_distribution.proxy'

terraform plan -target=aws_s3_bucket.testing_dashboard

terraform.exe import aws_ecr_repository.images client-cert-test

terraform.exe import aws_route53_record.dns  ZONE_ID_client-cert-test-dev.openfin.co_CNAME

terraform.exe  import aws_lb.network[0] arn:asdf

terraform.exe state rm aws_lb.network

terraform.exe state rm aws_lb.network[0]
