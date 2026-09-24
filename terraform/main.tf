module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 21.0"

  name               = "java-devops-eks"
  kubernetes_version = "1.36"

  enable_cluster_creator_admin_permissions = true

  vpc_id = "vpc-0603e2c4c78d4d7f2"

  subnet_ids = [
    "subnet-047458ae1ff093c5c",
    aws_subnet.eks_subnet_2.id
  ]

  eks_managed_node_groups = {
    java_app = {
      instance_types = ["t3.small"]

      min_size     = 1
      max_size     = 1
      desired_size = 1
    }
  }
}