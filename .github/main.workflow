workflow "neutral" {
  on = "push"
  resolves = ["neuter"]
}

action "neuter" {
  uses = "./"
  args = "neut"
}

workflow "success" {
  on = "push"
  resolves = ["pass"]
}

action "pass" {
  uses = "./"
  args = "pass"
}
