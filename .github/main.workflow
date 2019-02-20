workflow "New workflow" {
  on = "push"
  resolves = ["chee's actions"]
}

action "chee's actions" {
  uses = "./"
  args = "honk --help"
}
