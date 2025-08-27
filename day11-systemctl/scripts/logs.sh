#!/usr/bin/env bash
# Day :11
# Author: <Nahid Hasan>
# Date: $(27/08/2025)
set -euo pipefail
journalctl -u hello.service -n 100 -f