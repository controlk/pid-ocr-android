#!/data/data/com.termux/files/usr/bin/bash
set -e
cd "$(dirname "$0")/.."
source .venv/bin/activate
export TESSERACT_CMD="$(which tesseract)"
export PID_HOST=127.0.0.1
export PID_PORT=5050
echo "Open Chrome on this phone: http://127.0.0.1:5050"
python app.py
