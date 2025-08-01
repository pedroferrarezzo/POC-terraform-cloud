resource "kubectl_manifest" "namespace" {
    depends_on = [ aws_eks_node_group.node_group ]
    yaml_body = <<YAML
apiVersion: v1
kind: Namespace
metadata:
  name: nginx
YAML
}