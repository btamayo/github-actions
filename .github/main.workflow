workflow "pdk-validate docker build" {
  on = "push"
  resolves = [
    "push pdk-validate"
  ]
}

action "pdk-validate is master" {
  uses = "actions/bin/filter@3c98a2679187369a2116d4f311568596d3725740"
  args = "branch master"
}

action "pdk-validate docker registry" {
  uses = "actions/docker/login@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["pdk-validate is master"]
  secrets = ["DOCKER_USERNAME", "DOCKER_PASSWORD"]
}

action "build pdk-validate" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["pdk-validate docker registry"]
  args = "build -t mpepping/pdk-validate-github-action ./pdk-validate"
}

action "push pdk-validate" {
  uses = "actions/docker/cli@8cdf801b322af5f369e00d85e9cf3a7122f49108"
  needs = ["build pdk-validate"]
  args = "push mpepping/pdk-validate-github-action"
}
