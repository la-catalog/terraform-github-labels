resource "github_issue_label" "bug" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "bug"
  color       = "d73a4a"
  description = "Algo que funcionava quebrou"
}

resource "github_issue_label" "enhancement" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "enhancement"
  color       = "a2eeef"
  description = "Algo que funciona pode ser melhorado"
}

resource "github_issue_label" "feature" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "feature"
  color       = "a2eeef"
  description = "Algo novo que pode ser implementado"
}

resource "github_issue_label" "problem" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "problem"
  color       = "a2eeef"
  description = "Algo que não sabemos como resolver"
}

resource "github_issue_label" "refactor" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "refactor"
  color       = "a2eeef"
  description = "Algum código que pode ser reescrito"
}

resource "github_issue_label" "clean" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "clean"
  color       = "a2eeef"
  description = "Algum texto/documentação que pode ser reescrito"
}

resource "github_issue_label" "question" {
  for_each    = toset(data.github_repositories.la_catalog.names)
  repository  = each.key
  name        = "question"
  color       = "d876e3"
  description = "Alguma pergunta"
}