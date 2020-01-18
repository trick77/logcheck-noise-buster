#!/usr/bin/env bash

set -euxo pipefail
logcheck-test --log-file ./syslog --rule-file ../ignore.d.server/local-systemd
logcheck-test --log-file ./auth.log --rule-file ../ignore.d.server/local-sshd
