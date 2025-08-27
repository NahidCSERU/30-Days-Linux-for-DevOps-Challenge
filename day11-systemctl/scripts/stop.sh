#!/usr/bin/env bash
# Day :11
# Author: <Nahid Hasan>
# Date: $(27/08/2025)
set -euo pipefail
sudo systemctl stop hello.service
systemctl status --no-pager hello.service || true