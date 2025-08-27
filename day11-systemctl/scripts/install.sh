#!/usr/bin/env bash
# Day :11
# Author: <Nahid Hasan>
# Date: $(/08/2025)

set -euo pipefail


# Paths
APP_SRC_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_BIN="/usr/local/bin/hello.sh"
ENV_DST="/etc/default/hello"
UNIT_DIR="/etc/systemd/system"


# Copy app script
sudo install -m 0755 "$APP_SRC_DIR/app/hello.sh" "$APP_BIN"


# Copy env (create dir if missing)
sudo install -d -m 0755 "/etc/default"
sudo install -m 0644 "$APP_SRC_DIR/env/hello.env" "$ENV_DST"


# Copy units
sudo install -m 0644 "$APP_SRC_DIR/systemd/hello.service" "$UNIT_DIR/hello.service"
sudo install -m 0644 "$APP_SRC_DIR/systemd/hello@.service" "$UNIT_DIR/hello@.service"
sudo install -m 0644 "$APP_SRC_DIR/systemd/hello-job.service" "$UNIT_DIR/hello-job.service"
sudo install -m 0644 "$APP_SRC_DIR/systemd/hello-job.timer" "$UNIT_DIR/hello-job.timer"


# Reload systemd to pick up new units
sudo systemctl daemon-reload


echo "✅ Installed: $APP_BIN, $ENV_DST, and systemd units."
echo "ℹ️ Start service: sudo systemctl start hello.service"
echo "ℹ️ Start timer: sudo systemctl start hello-job.timer"