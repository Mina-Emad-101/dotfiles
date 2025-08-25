ffmpeg -video_size 1366x768 -framerate 30 -f x11grab -i :0.0 \
-f pulse -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor \
-filter_complex "[1:a]amix=inputs=1:duration=longest[aout]" \
-map 0:v -map "[aout]" \
-c:v libx264 -preset ultrafast -crf 23 \
-c:a aac -b:a 192k \
output.mp4
