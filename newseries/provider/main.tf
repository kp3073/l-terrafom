provider "github" {}

resource "github_repository" "firstrepo" {
  name        = "first"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}
