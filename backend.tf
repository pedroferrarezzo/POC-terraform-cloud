# terraform {
#   backend "s3" {
#     bucket = "fiap-aula-terraform"
#     key    = "aula08/terraform.tfstate"
#     region = "us-east-1"
#   }
# }

terraform {
  cloud {
    organization = "fiap-soat-terraform"

    workspaces {
      name = "terraform-soat"
    }
  }
}