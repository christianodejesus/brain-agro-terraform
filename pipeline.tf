
module "code_pipeline" {
  source                      = "./modules/code_pipeline"
  repository_url              = module.ecs.repository_url
  region                      = var.region
  ecs_service_name            = module.ecs.service_name
  ecs_cluster_name            = module.ecs.cluster_name
  run_task_subnet_id          = module.networking.private_subnets_id[0]
  run_task_security_group_ids = concat(module.networking.security_groups_ids, [module.rds.db_access_sg_id, module.ecs.security_group_id])
  git_auth_token              = var.git_auth_token
  git_repository_branch       = var.git_repository_branch
  git_repository_name         = var.git_repository_name
  git_repository_owner        = var.git_repository_owner
  project_name                = var.project_name
  environment                 = var.environment
  migration_task_name         = module.ecs.migration_task_name
}
