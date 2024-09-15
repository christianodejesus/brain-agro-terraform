variable "region" {
  description = "Region that the instances will be created"
}

/*====
environment specific variables
======*/

variable "database_name" {
  description = "The database name"
}

variable "database_username" {
  description = "The username for the database"
}

variable "database_password" {
  description = "The user password for the database"
}

variable "domain" {
  default = "example.com"
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
variable "app_name" {
  description = "App name"
}
variable "environment" {
  description = "Project environment"
}
