resource "aws_iam_policy" "alb_controller_policy" {

  name = "AWSLoadBalancerControllerIAMPolicy"

  policy = file("${path.module}/alb_controller_policy.json")

}
