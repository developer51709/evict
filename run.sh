#!/usr/bin/env bash
#
# Run the bot in this workspace.
#
# This machine has no root access, so the native libraries the bot needs
# (libcairo, ImageMagick, ffmpeg/ffprobe) are unpacked into .vendor/ instead
# of being installed system-wide. This script points the loader at them and
# then runs the bot with the project's virtualenv.
#
#   ./run.sh
#
set -euo pipefail
cd "$(dirname "$0")"
ROOT=$PWD

LIBDIR="$ROOT/.vendor/usr/lib/x86_64-linux-gnu"
export LD_LIBRARY_PATH="$LIBDIR:$LIBDIR/blas:$LIBDIR/lapack:$LIBDIR/pulseaudio${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export PATH="$ROOT/.vendor/usr/bin:$ROOT/.venv/bin:$PATH"

# ImageMagick: wand looks these up through MAGICK_HOME, not ldconfig.
export MAGICK_HOME="$ROOT/.vendor/usr"
export MAGICK_CONFIGURE_PATH="$ROOT/.vendor/etc/ImageMagick-6"
export MAGICK_CODER_MODULE_PATH="$LIBDIR/ImageMagick-6.9.12/modules-Q16/coders"
export MAGICK_FILTER_MODULE_PATH="$LIBDIR/ImageMagick-6.9.12/modules-Q16/filters"

exec "$ROOT/.venv/bin/python" main.py "$@"
