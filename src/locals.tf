locals {
  gitlab_projects = {
    for project in yamldecode(file("${path.module}/_configuration/projects.yaml")).projects : project.name => project...
  }
}
