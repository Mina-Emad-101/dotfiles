#!/bin/bash

# Check if a URL is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <IP_camera_stream_URL>"
  echo "Example: $0 http://192.168.1.100:8080/video"
  exit 1
fi

STREAM_URL="$1"
VIRTUAL_DEVICE="/dev/video0"

# Check if v4l2loopback module is loaded, load it if not
if ! lsmod | grep -q v4l2loopback; then
  echo "Loading v4l2loopback module..."
  sudo modprobe v4l2loopback exclusive_caps=1
  if [ $? -ne 0 ]; then
    echo "Error: Failed to load v4l2loopback module. Ensure v4l2loopback-dkms is installed."
    exit 1
  fi
fi

# Check if the virtual device exists
if [ ! -e "$VIRTUAL_DEVICE" ]; then
  echo "Error: Virtual device $VIRTUAL_DEVICE not found."
  exit 1
fi

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
  echo "Error: ffmpeg is not installed. Please install it with 'sudo pacman -S ffmpeg'."
  exit 1
fi

# Run ffmpeg to stream the IP camera to the virtual device
echo "Starting ffmpeg stream to $VIRTUAL_DEVICE..."
ffmpeg -i "$STREAM_URL" -vf format=yuv420p -f v4l2 "$VIRTUAL_DEVICE"

if [ $? -ne 0 ]; then
  echo "Error: ffmpeg failed to stream. Check the stream URL or virtual device."
  exit 1
fi
