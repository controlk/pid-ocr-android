# Android install (Termux) — runs on the phone

No Windows. No Wi-Fi link to a PC.
Tesseract and Python run inside Termux on the same Android device.
Chrome on the same phone opens `http://127.0.0.1:5050`.

## 1. Install Termux

Install Termux from F-Droid:

https://f-droid.org/en/packages/com.termux/

Open Termux.

## 2. Give storage access

```bash
pkg update -y
pkg install -y termux-api
termux-setup-storage
```

Allow storage when Android asks.
This creates `~/storage/shared` → phone storage.

## 3. Install Linux packages including Tesseract

```bash
pkg install -y git python tesseract clang make pkg-config \
  libjpeg-turbo libpng zlib freetype
```

Check Tesseract:

```bash
which tesseract
tesseract --version
```

## 4. Clone this repo

```bash
cd ~
git clone https://github.com/controlk/pid-ocr-android.git
cd pid-ocr-android
```

## 5. Python libraries

```bash
bash scripts/termux_install.sh
```

## 6. Put a PDF on the phone

Copy your P&ID PDF to:

`Internal storage / Documents / pid-ocr / input.pdf`

Termux path:

```text
~/storage/shared/Documents/pid-ocr/input.pdf
```

## 7. Run

```bash
bash scripts/termux_run.sh
```

Leave Termux open.

## 8. Open the app on the same phone

In Chrome or Firefox **on that phone**:

```text
http://127.0.0.1:5050
```

Review page:

```text
http://127.0.0.1:5050/review
```

Chrome menu → **Add to Home screen**.

This is local on the device. It does not need Wi-Fi to a computer.

## 9. First OCR settings on phone

Use lower DPI first on a phone:

- DPI: 400 or 600
- Angle: 0
- PSM: 11
- prep: enhance

Output folder:

```text
~/storage/shared/Documents/pid-ocr/out
```

## Stop

In Termux press `Ctrl+C`.

## Update

```bash
cd ~/pid-ocr-android
git pull
source .venv/bin/activate
pip install -r requirements.txt
```
