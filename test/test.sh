#!/usr/bin/env bash
 logcheck-test -i --log-file ./syslog --rule-file ../ignore.d.server/local-systemd
 logcheck-test -i --log-file ./auth.log --rule-file ../ignore.d.server/local-sshd
