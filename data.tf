# Error: reading IAM Role (voclabs): operation error IAM: GetRole, https response error StatusCode: 403... 
# iam:GetRole on resource: role voclabs with an explicit deny in an identity-based policy
# data "aws_iam_role" "principal_role" {
#   name =  "voclabs"
# }

data "aws_eks_cluster" "cluster" {
    name = aws_eks_cluster.cluster.name
}

data "aws_eks_cluster_auth" "auth" {
    name = aws_eks_cluster.cluster.name
}
