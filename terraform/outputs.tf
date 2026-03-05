output "project_id" {
  value = railway_project.this.id
}

output "test_environment_id" {
  value = railway_environment.test.id
}

output "hello_service_id" {
  value = railway_service.hello.id
}

output "domain" {
  value = "${railway_service_domain.hello.domain}"
}
