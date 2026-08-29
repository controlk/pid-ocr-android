# Tesseract on Linux (desktop or Termux)

## Debian / Ubuntu / Mint

```bash
sudo apt update
sudo apt install -y tesseract-ocr tesseract-ocr-eng \
  python3 python3-venv python3-pip git
tesseract --version
tesseract --list-langs
```

If `eng` is missing:

```bash
sudo apt install -y tesseract-ocr-eng
```

Binary path is usually:

```text
/usr/bin/tesseract
```

## Fedora

```bash
sudo dnf install -y tesseract tesseract-langpack-eng python3 git
```

## Arch

```bash
sudo pacman -S tesseract tesseract-data-eng python git
```

## Termux (Android Linux)

```bash
pkg update -y
pkg install -y tesseract python git
which tesseract
```

Typical path:

```text
/data/data/com.termux/files/usr/bin/tesseract
```

## Check that Python sees Tesseract

```bash
python3 - <<'PY'
import pytesseract
print(pytesseract.get_tesseract_version())
PY
```

If that fails, set the binary:

```bash
export TESSERACT_CMD=/usr/bin/tesseract
```

On Termux:

```bash
export TESSERACT_CMD=$(which tesseract)
```

## Run this project on Linux

```bash
git clone https://github.com/controlk/pid-ocr-android.git
cd pid-ocr-android
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python app.py
```

Open on the same machine:

```text
http://127.0.0.1:5050
```
