#!/usr/bin/env bash
# Day :11
# Author: <Nahid Hasan>
# Date: $(27/08/2025)
set -euo pipefail
sudo systemctl enable hello.service
systemctl is-enabled hello.service || true