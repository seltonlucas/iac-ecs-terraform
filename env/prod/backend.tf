terraform {
  backend "s3" {
    bucket = "spring-petclinic-terraform-state"
    key    = "prod/terraform.tfstate"
    region = "us-west-2"
  }
}
