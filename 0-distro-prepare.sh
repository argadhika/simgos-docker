#!/bin/bash

# Fungsi untuk memeriksa apakah aria2c sudah terpasang
cek_aria2() {
  if command -v aria2c &> /dev/null; then
    echo "aria2c sudah terpasang."
    aria2c --version
  else
    echo "aria2c belum terpasang. Menginstal..."
    pasang_aria2
  fi
}

# Fungsi untuk menginstal aria2c berdasarkan manajer paket
pasang_aria2() {
  case $MANAJER_PAKET in
    apt)
      sudo apt update && sudo apt install -y aria2
    ;;
    dnf)
      sudo dnf install -y aria2
    ;;
    pacman)
      sudo pacman -Sy aria2
    ;;
  esac
}

# Menentukan manajer paket
if command -v apt &> /dev/null; then
  MANAJER_PAKET="apt"
  elif command -v dnf &> /dev/null; then
  MANAJER_PAKET="dnf"
  elif command -v pacman &> /dev/null; then
  MANAJER_PAKET="pacman"
else
  echo "Manajer paket tidak didukung atau tidak ditemukan."
  exit 1
fi

# Memeriksa apakah aria2 sudah terpasang dan menginstal jika perlu
case $MANAJER_PAKET in
  apt)
    dpkg -l | grep aria2 || cek_aria2
  ;;
  dnf)
    rpm -qa | grep aria2 || cek_aria2
  ;;
  pacman)
    pacman -Q | grep aria2 || cek_aria2
  ;;
esac
