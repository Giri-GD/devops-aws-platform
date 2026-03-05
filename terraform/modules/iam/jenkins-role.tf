resource "aws_iam_role" "jenkins_role" {

  name = "jenkins-role"

  assume_role_policy = jsonencode({

    Version = "2012-10-17"

    Statement = [{
      Effect = "Allow"

      Principal = {
        Service = "ec2.amazonaws.com"
      }

      Action = "sts:AssumeRole"

    }]

  })

}

resource "aws_iam_role_policy_attachment" "ecr_access" {

  role       = aws_iam_role.jenkins_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"

}
