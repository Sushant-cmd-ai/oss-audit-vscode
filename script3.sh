#!/bin/bash

echo "===== DIRECTORY AUDIT ====="

DIR_LIST=("/etc" "/var" "/home" "/usr/bin" "/tmp")

for d in "${DIR_LIST[@]}"
do
    if [ -d "$d" ]; then
        PERM=$(ls -ld "$d" | awk '{print $1}')
        OWNER=$(ls -ld "$d" | awk '{print $3}')
        SIZE=$(du -sh "$d" 2>/dev/null | cut -f1)

        echo "$d -> Perm: $PERM | Owner: $OWNER | Size: $SIZE"
    else
        echo "$d -> Not Found"
    fi
done

echo "===== END ====="