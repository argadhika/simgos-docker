#!/bin/bash

# Periksa dan instal rpm2cpio jika belum terinstal
if ! command -v rpm2cpio &> /dev/null; then
  echo "rpm2cpio tidak ditemukan. Menginstal rpm2cpio unzip wget..."
  sudo apt update
  sudo apt install -y rpm2cpio unzip wget
fi

# Tentukan direktori RPM dan tujuan
WORKING_DIR=$(pwd)
SIMGOS_RPM_DIR="simgos-rpm"
mkdir -p "$SIMGOS_RPM_DIR"

# Konfirmasi penghapusan folder sebelumnya jika ada
if [ -d "$SIMGOS_RPM_DIR" ]; then
  read -p "File Sebelumnya Sudah ada. Hapus dan lanjutkan? (y/n): " confirm
  if [ "$confirm" = "y" ]; then
    rm -rf "$SIMGOS_RPM_DIR"
    echo "Folder $SIMGOS_RPM_DIR dihapus."
  else
    echo "Proses dibatalkan."
    exit 1
  fi
fi

# Temukan file RPM terbaru berdasarkan versi
newest_rpm=$(ls -1 $WORKING_DIR/z-tmp/simgos*.rpm | sort -V | tail -n 1)

if [ -z "$newest_rpm" ]; then
  echo "Tidak ada file .rpm ditemukan."
  exit 1
else
  echo "File RPM terbaru: $newest_rpm"
fi

# Ekstrak file RPM ke direktori tujuan
rpm2cpio "$newest_rpm" | (cd "$SIMGOS_RPM_DIR" && cpio -idmv)

echo "Ekstraksi selesai. File ada di direktori $SIMGOS_RPM_DIR."