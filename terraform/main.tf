resource "railway_project" "this" {
  name = "hello-world-project"
}

resource "railway_environment" "test" {
  name       = "test"
  project_id = railway_project.this.id
}

resource "railway_service" "hello" {
  name               = "Hello"
  project_id         = railway_project.this.id
  source_repo        = var.source_repo
  source_repo_branch = var.source_repo_branch
}

resource "railway_variable" "message" {
  name = "MESSAGE"
  value = "Hello variable"
  environment_id = railway_project.this.default_environment.id
  service_id = railway_service.hello.id
}

resource "railway_service_domain" "hello" {
  environment_id = railway_project.this.default_environment.id
  service_id     = railway_service.hello.id
  subdomain      = "hello "
}