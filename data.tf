data "aws_iam_role" "principal_role" {
  name = "LabRole"
}

data "aws_eks_cluster" "cluster" {
    name = aws_eks_cluster.cluster.name
}

data "aws_eks_cluster_auth" "auth" {
    name = aws_eks_cluster.cluster.name
}
