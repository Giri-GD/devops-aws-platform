resource "aws_cloudwatch_log_group" "eks_logs" {

  name = "/aws/eks/devops-cluster"

  retention_in_days = 7

}
