# PDK Validate GitHub action

Run `pdk validate` on Puppet code:

```ruby
workflow "PDK Validate Puppet code" {
  on = "push"
  resolves = ["Validator"]
}

action "Validator" {
  uses = "docker://btamayo/pdk-validate-github-action"
}
```
