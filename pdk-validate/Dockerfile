FROM puppet/puppet-dev-tools:latest as base

FROM base as pdk-validate
LABEL "com.github.actions.name"        = "PDK validate"
LABEL "com.github.actions.description" = "Run PDK validate"
LABEL "com.github.actions.icon"        = "box"
LABEL "com.github.actions.color"       = "yellow"

LABEL "repository" = "https://github.com/btamayo/github-actions"
LABEL "homepage"   = "https://github.com/puppetlabs/pdk"
LABEL "maintainer" = "https://github.com/btamayo"

ADD entrypoint.sh  /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]