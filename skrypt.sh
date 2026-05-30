#!/bin/bash

SCRIPT_NAME=$0

case "$1" in
    --date)
        date
        ;;
    --logs)
        count=${2:-100}
        for ((i=1; i<=count; i++)); do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename" > "$filename"
            echo "Skrypt: $SCRIPT_NAME" >> "$filename"
            echo "Data: $(date)" >> "$filename"
        done
        ;;
    --help)
        echo "Dostępne opcje:"
        echo "  --date         Wyświetla dzisiejszą datę"
        echo "  --logs [liczba] Tworzy pliki log (domyślnie 100)"
        echo "  --help         Wyświetla tę pomoc"
        ;;
esac