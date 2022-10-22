resource "github_issue_label" "bug" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "bug"
  color       = "FBCA04"
  description = "Algo que funcionava quebrou"
}

resource "github_issue_label" "enhancement" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "enhancement"
  color       = "1D76DB"
  description = "Algo que funciona pode ser melhorado"
}

resource "github_issue_label" "feature" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "feature"
  color       = "C5DEF5"
  description = "Algo novo que pode ser implementado"
}

resource "github_issue_label" "problem" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "problem"
  color       = "F9D0C4"
  description = "Algo que não sabemos como resolver"
}

resource "github_issue_label" "refactor" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "refactor"
  color       = "0E8A16"
  description = "Algum código que pode ser reescrito"
}

resource "github_issue_label" "clean" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "clean"
  color       = "C2E0C6"
  description = "Algum texto/documentação que pode ser reescrito"
}

resource "github_issue_label" "question" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "question"
  color       = "D4C5F9"
  description = "Alguma pergunta"
}