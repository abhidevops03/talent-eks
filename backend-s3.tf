terraform {
  backend "s3" {
    bucket = "talent-eks-terraform-state-file"
    key    = "terraform.tfstate"  # your path of file
    dynamodb_table = "talent-eks-tf-lockfile"
    region = "us-east-1"
  }
}
