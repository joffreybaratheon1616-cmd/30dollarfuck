#!/bin/bash
set -e
cd "$(dirname "$0")"
if [ ! -f .env ]; then
  echo "Copy .env.example to .env and fill credentials first."
  exit 1
fi
pip install -r requirements.txt -q
exec python3 main.py
