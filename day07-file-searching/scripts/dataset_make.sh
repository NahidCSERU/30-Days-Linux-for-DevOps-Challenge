# Day 07: File Searching (find, locate)
# Author: <Nahid Hasan>
# Date: $(23/08/2025)

---

## `scripts/dataset_make.sh`
```bash
#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PG="$ROOT_DIR/playground"

echo "→ Creating demo dataset under: $PG"
rm -rf "$PG"
mkdir -p "$PG"/{logs,media/photos,media/videos,docs/secret,bin,big}

# logs
echo "app started"        > "$PG/logs/app.log"
echo "yesterday session"  > "$PG/logs/app.log.1"
echo "[ERR] crash trace"  > "$PG/logs/error_$(date +%F).log"

# media
printf '\x89PNG\r\n' > "$PG/media/photos/img002.png"
echo "JPEG"          > "$PG/media/photos/img001.jpg"
echo "video-mp4"     > "$PG/media/videos/clip.mp4"
echo "video-mov"     > "$PG/media/videos/raw.mov"

# docs
echo "Q3 report v1"  > "$PG/docs/report_v1.txt"
echo "Q3 report v2"  > "$PG/docs/report_v2.txt"
echo "# Draft Doc"   > "$PG/docs/draft.md"
echo "user=demo pass=secret" > "$PG/docs/secret/credentials.txt"

# bin
echo -e '#!/usr/bin/env bash\necho "run!"' > "$PG/bin/run.sh"
chmod +x "$PG/bin/run.sh"

# big file (~5MB)
dd if=/dev/zero of="$PG/big/huge.bin" bs=1M count=5 status=none

echo "✓ Dataset ready."
