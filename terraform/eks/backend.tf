terraform {
  backend "s3" {
    bucket         = "goit-tf-state-208337080520"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
