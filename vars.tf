variable "projectName" {
  default = "fiap-aula-terraform"
}

variable "region_default" {
  default = "us-east-1"
}

variable "cidr_vpc" {
  default = "10.0.0.0/16"
}

variable "tags" {
  default = {
    Name = "fiap-terraform-aula",
    School = "FIAP",
    Environment = "Production",
    Year = "2025"
  }
}

variable "instance_type" {
  default = "t3.medium"
}

variable "eksClusterAdminPolicyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}