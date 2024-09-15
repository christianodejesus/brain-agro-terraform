variable "repository_url" {
  description = "The url of the ECR repository"
}

variable "region" {
  description = "The region to use"
}

variable "ecs_cluster_name" {
  description = "The cluster that we will deploy"
}

variable "ecs_service_name" {
  description = "The ECS service that will be deployed"
}

variable "run_task_subnet_id" {
  description = "The subnet Id where single run task will be executed"
}

variable "run_task_security_group_ids" {
  type        = list(string)
  description = "The security group Ids attached where the single run task will be executed"
}
variable "git_repository_name" {
  description = "Git repo name for source project"
}
variable "git_repository_owner" {
  description = "Git repo owner name"
}
variable "git_repository_branch" {
  description = "Git source branch name"
}
variable "git_auth_token" {
  description = "Token for authentication on Git"
}
variable "project_name" {
  description = "Main name of project"
}
variable "environment" {
  description = "Project environment"
}
variable "migration_task_name" {
  description = "Migration task name"
}
