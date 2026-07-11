terraform {
  backend "s3" {
    bucket = "my-app-bucket-507dd76f"
    key    = "devops-project-1/jenkins/terraform.tfstate"
    region = "ap-south-1"
  }
}