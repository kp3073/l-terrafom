provider "github" {
token = "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"
 }



resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}