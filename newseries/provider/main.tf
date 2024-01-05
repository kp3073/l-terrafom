provider "github" {}

resource "github_repository" "firstrepo" {
  name        = "first"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}

resource "github_repository" "secondrepo" {
  name        = "second"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}