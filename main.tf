terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

variable "gh_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token         = var.gh_token
  owner         = "la-catalog"
  read_delay_ms = 1000
}

data "github_repositories" "la_catalog" {
  query = "org:la-catalog"
}