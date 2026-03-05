resource "aws_eks_node_group" "nodes" {

  cluster_name = aws_eks_cluster.cluster.name

  node_role_arn = var.node_role

  subnet_ids = var.subnets

  scaling_config {

    desired_size = 2
    max_size     = 3
    min_size     = 1

  }

}
