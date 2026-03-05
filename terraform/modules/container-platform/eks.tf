resource "aws_eks_cluster" "cluster" {

  name = "devops-cluster"

  role_arn = var.cluster_role

  vpc_config {

    subnet_ids = var.subnets

  }

}
