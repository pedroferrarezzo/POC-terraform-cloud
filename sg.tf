# https://docs.aws.amazon.com/pt_br/eks/latest/best-practices/load-balancing.html
# AWS Elastic Load Balancing target-type = Instance
resource "aws_security_group" "sg" {
    name = "${var.projectName}-sg"
    description = "Usado para controlar acesso ao node group do EKS"
    vpc_id = aws_vpc.vpc_fiap.id

    ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "All"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}