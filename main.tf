resource "aws_ecs_cluster" "Cluster" {
  name = "$(var.project)-$(var.environment}"
  setting {
    name = "TerraformTests"
    value = "enabled"
  }
  capacity_providers = ["Fargate", ]
}
