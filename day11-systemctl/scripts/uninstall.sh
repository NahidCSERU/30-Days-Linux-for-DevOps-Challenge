#!/usr/bin/env bash
# Day :11
# Author: <Nahid Hasan>
# Date: $(27/08/2025)
set -euo pipefail


UNIT_DIR="/etc/systemd/system"
APP_BIN="/usr/local/bin/hello.sh"
ENV_DST="/etc/default/hello"


# Stop and disable services/timers if present
sudo systemctl stop hello.service 2>/dev/null || true
sudo systemctl stop hello-job.timer 2>/dev/null || true
sudo systemctl disable hello.service 2>/dev/null || true
sudo systemctl disable hello-job.timer 2>/dev/null || true


# Remove units
sudo rm -f "$UNIT_DIR/hello.service" "$UNIT_DIR/hello@.service" \
"$UNIT_DIR/hello-job.service" "$UNIT_DIR/hello-job.timer"


# Reload systemd
sudo systemctl daemon-reload


# Remove app & env
sudo rm -f "$APP_BIN" "$ENV_DST"


echo "🧹 Uninstalled hello units, app, and env."