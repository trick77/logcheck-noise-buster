#!/usr/bin/env bash
#
# Installs additional LogCheck filter rules using symlinks from a git repo.
#
set -euo pipefail

# configuration
logcheck_path="/etc/logcheck"
local_files=(
    "ignore.d.server/local-systemd"
    "ignore.d.server/local-rsyslogd"
    "ignore.d.server/local-cron"
)

for local_file in "${local_files[@]}"
do
  destname=${logcheck_path}/${local_file}
  echo "Creating symlink for ${local_file} as ${destname}"
  ln -s ${PWD}/${local_file} ${destname}
done
