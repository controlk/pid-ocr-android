#!/data/data/com.termux/files/usr/bin/bash
set -e
cd "$(dirname "$0")/.."
pkg update -y
pkg install -y python tesseract git clang make pkg-config libjpeg-turbo libpng zlib freetype termux-api
if [ ! -d "$HOME/storage/shared" ]; then
  termux-setup-storage || true
fi
mkdir -p "$HOME/storage/shared/Documents/pid-ocr/out" || mkdir -p "$HOME/pid-ocr/out"
python -m venv .venv
source .venv/bin/activate
pip install -U pip
pip install -r requirements.txt
echo
echo "Tesseract: $(which tesseract)"
tesseract --version | head -n 1
echo "Install done. Run: bash scripts/termux_run.sh"
