# ShellCheck GitHub action

Runs shellcheck on Puppet code:

```ruby
workflow "ShellCheck all shell scripts" {
  on = "push"
  resolves = ["ShellCheck"]
}

action "ShellCheck" {
  uses = "docker://btamayo/shellcheck-github-action"
}
```