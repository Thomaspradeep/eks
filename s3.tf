module "infra_bucket" {
    source = "git::https://github.com/Thomaspradeep/IDP.git?ref=1.1.1"
    bucket_name = local.infra_bucket_name
}