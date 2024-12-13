terraform {
  backend "s3" {
    bucket = "talent-eks-terraform-state-file"
    key    = "terraform.tfstate"  # your path of file
    region = "us-east-1"
  }
}
