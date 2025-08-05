resource "aws_eks_access_entry" "access_entry" {
  cluster_name      = aws_eks_cluster.cluster.name
  principal_arn     = local.principalRoleArn
  kubernetes_groups = ["group-11soat", "group-teste2"]
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "access_entry_association" {
  cluster_name  = aws_eks_cluster.cluster.name
  principal_arn = local.principalRoleArn
  policy_arn    = var.eksClusterAdminPolicyArn
  
  access_scope {
    type = "cluster"
  }
}