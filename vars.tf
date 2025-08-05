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

variable "principalRoleArn" {
  default = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/voclabs"
}

variable "labRoleArn" {
  default = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/LabRole"
}

variable "eksClusterAdminPolicyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}