#!/usr/bin/env bash

set -euxo pipefail

logcheck-test -q --log-file ./syslog --rule-file ../ignore.d.server/local-systemd
logcheck-test -q --log-file ./auth.log --rule-file ../ignore.d.server/local-sshd
