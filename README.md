# P&ID OCR Android

Manual P&ID tag review + Tesseract OCR.

This repository is meant to run **on the Android phone itself** (Termux Linux),
not through Wi-Fi to a Windows PC.

Repo: https://github.com/controlk/pid-ocr-android

## What it does

- Renders a P&ID PDF
- Runs Tesseract OCR
- Opens a local browser UI on the phone
- You verify tags, assign index, drag double-ring balloons
- Export Excel

OCR reads what is written on the drawing. It does not invent missing unit numbers.

## Install on Android (no PC Wi-Fi)

Read: [INSTALL_ANDROID.md](INSTALL_ANDROID.md)

Short path:

1. Install **Termux** from F-Droid (not Play Store if it is outdated).
2. In Termux:

```bash
pkg update
pkg install git
git clone https://github.com/controlk/pid-ocr-android.git
cd pid-ocr-android
bash scripts/termux_install.sh
bash scripts/termux_run.sh
```

3. On the **same phone**, open Chrome:

`http://127.0.0.1:5050`

Then Chrome menu → Add to Home screen.

## Install Tesseract on Linux

Read: [INSTALL_LINUX.md](INSTALL_LINUX.md)

Debian / Ubuntu:

```bash
sudo apt update
sudo apt install -y tesseract-ocr tesseract-ocr-eng
tesseract --version
```

## Run after install

```bash
python app.py
```

Open `http://127.0.0.1:5050` on the same device.

Put the PDF here on Android:

`/storage/emulated/0/Documents/pid-ocr/input.pdf`

or after `termux-setup-storage`:

`~/storage/shared/Documents/pid-ocr/input.pdf`

Outputs go to:

`~/storage/shared/Documents/pid-ocr/out`
