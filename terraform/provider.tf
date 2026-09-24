provider "aws" {
    region = "ap-south-1"
}

backend "s3" {
    bucket = "java-devops-terraform-state-354147111180"
    key    = "java-devops/terraform.tfstate"
    region = "ap-south-1"
  }