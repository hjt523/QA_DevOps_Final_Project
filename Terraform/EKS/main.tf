resource "aws_eks_cluster" "project_cluster_1" {
  name = "project_cluster_1"
  role_arn = var.cluster_iam_role_arn
  vpc_config {
    subnet_ids = var.available_subnets
  }
  # depends_on = var.iam_roles_eks_cluster
}


resource "aws_eks_node_group" "project_node_group" {
  cluster_name = aws_eks_cluster.project_cluster_1.name
  node_group_name = "project_node_group"
  node_role_arn = var.node_iam_role_arn
  subnet_ids = var.subnet_ids
  scaling_config {
    desired_size = 3
    max_size = 4
    min_size = 1
  }
  # depends_on = var.iam_roles_eks_node
}
