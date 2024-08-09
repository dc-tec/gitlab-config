terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "17.2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.113.0"
    }
  }

  required_version = "1.8.5"

  backend "http" {
  }
}

module "gitlab_project" {
  source = "../../terraform-registry/src/gitlab-project"

  for_each = local.gitlab_projects

  project_name        = each.value[0].name
  project_description = each.value[0].description
  project_visibility  = each.value[0].visibility

  ## Project Import Settings
  mirror          = each.value[0].mirror
  import_url      = each.value[0].import_url
  import_username = each.value[0].import_username
  import_password = each.value[0].import_password


}
