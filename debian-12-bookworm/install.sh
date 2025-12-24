#!/usr/bin/env bash

set -euo pipefail

cd ./ignore.d.server
for name in *; do
	path="/etc/logcheck/ignore.d.server/local-$name"
	echo "Symlinking ${name} to ${path}"
	if [ ! -f "${path}" ]; then
		ln -s "$(readlink -f "${name}")" "${path}"
	fi
done
