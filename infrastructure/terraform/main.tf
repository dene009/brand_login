provider "aws" {
  region = "us-east-1"
}

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = "cloud-microservices"
  cluster_version = "1.29"
  subnet_ids      = ["subnet-049400443e62f9aa5","subnet-001fee11d790eccbc"]
  vpc_id          = "vpc-0fe91905328435aa8"                  

  eks_managed_node_groups = {
    default = {
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1

      instance_types = ["t3.medium"]
    }
  }
}

