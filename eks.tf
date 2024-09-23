resource "aws_eks_cluster" "mycluster" {
    name = "mycluster"
    role_arn = "arn:aws:iam::650251688303:role/AmazonEKSRole"

    vpc_config {
        subnet_ids = ["subnet-0bde0e1c7eae6887c","subnet-0903f761c530aff48"]
        security_group_ids = ["sg-05ecf22944ada3dd9"]
    }
}

resource "aws_eks_fargate_profile" "myfargate" {
  cluster_name           = aws_eks_cluster.mycluster.name
  fargate_profile_name   = "myfargate"
  pod_execution_role_arn = aws_iam_role.fargate_role.arn
  subnet_ids             = ["subnet-01340f133a56696b6","subnet-0b1b89ebb6741e85a"]

  selector {
    namespace = "test"
  }
}