resource "aws_eks_cluster" "mycluster" {
    name = "mycluster"
    role_arn = var.eks_role

    vpc_config = {
        subnet_ids = ["subnet-0bde0e1c7eae6887c","subnet-0903f761c530aff48"]
    }
    depends_on = [
        "arn:aws:iam::650251688303:role/AmazonEKSRole"
     ]
}