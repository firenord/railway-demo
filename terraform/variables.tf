variable "source_repo" {
  description = "Optional GitHub repository URL to connect to the Railway service. Leave null to create service without repo linkage."
  type        = string
  default     = "firenord/railway-demo"
}

variable "source_repo_branch" {
  description = "Branch to use when source_repo is set."
  type        = string
  default     = "main"
}
