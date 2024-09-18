resource "aws_eks_cluster" "mycluster" {
    name = "dev-cluster"
    role_arn = aws_iam_role.test_role.arn
}
