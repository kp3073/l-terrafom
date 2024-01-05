provider "github"
{}

resource "github_repository" "terraforminit" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}