#!/bin/bash

SCRIPT_NAME=$0

case "$1" in
    --date)
        date
        ;;
    --logs)
        for i in {1..100}; do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename" > "$filename"
            echo "Skrypt: $SCRIPT_NAME" >> "$filename"
            echo "Data: $(date)" >> "$filename"
        done
        ;;
esac