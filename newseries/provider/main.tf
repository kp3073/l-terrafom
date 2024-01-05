provider "github" {
token="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"
 }



resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"
  auto_init = true
}