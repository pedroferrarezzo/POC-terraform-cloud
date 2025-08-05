resource "aws_eks_access_entry" "access_entry" {
  cluster_name      = aws_eks_cluster.cluster.name
  principal_arn     = var.principalRoleArn
  kubernetes_groups = ["group-11soat", "group-profs"]
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "access_entry_association" {
  cluster_name  = aws_eks_cluster.cluster.name
  policy_arn    = var.eksClusterAdminPolicyArn
  principal_arn = var.principalRoleArn

  access_scope {
    type = "cluster"
  }
}