#!/bin/bash

if [ -d ./.dev_builds ]; then
  echo "delete .dev_builds"
  rm -rf .dev_builds
fi
if [ -d ./dev_releases ]; then
  echo "delete dev_releases"
  rm -rf dev_releases
fi
if [ -f ./zabbix-agent-release-5.8.1.tgz ]; then
  echo "delete zabbix-agent-release-5.8.1.tgz"
  rm -rf zabbix-agent-release-5.8.1.tgz
fi

bosh create-release --force --tarball zabbix-agent-release-5.8.1.tgz --name zabbix-agent --version 5.8.1
