terraform {
  backend "s3" {
    bucket = "terra-state-bckt"
    key = "terraform.tfstate"
    region = "ap-south-1"
  }
}