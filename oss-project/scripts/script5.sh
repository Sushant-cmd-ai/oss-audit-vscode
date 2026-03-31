#!/bin/bash

OUTPUT="manifest.txt"

echo "===== MANIFEST FILE =====" > $OUTPUT
echo "Generated on: $(date)" >> $OUTPUT
echo "" >> $OUTPUT

echo "Listing files in project:" >> $OUTPUT
ls -R .. >> $OUTPUT

echo "" >> $OUTPUT
echo "Disk usage:" >> $OUTPUT
du -sh .. >> $OUTPUT

echo "" >> $OUTPUT
echo "User: $(whoami)" >> $OUTPUT

echo "Manifest created: $OUTPUT"