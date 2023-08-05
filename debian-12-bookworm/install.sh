#!/usr/bin/env bash
#
# Installs additional LogCheck filter rules.
#
set -euo pipefail

#!/bin/sh
set -e
cd ./ignore.d.server
for name in * ; do
    path="/etc/logcheck/ignore.d.server/local-$name"
    echo "Symlinking ${name} to ${path}"
    if [ ! -f "${path}" ] ; then
        ln -s "$(readlink -f "${name}")" "${path}"
    fi
done
