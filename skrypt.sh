#!/bin/bash

SCRIPT_NAME=$0

case "$1" in
    -d|--date)
        date
        ;;
    -l|--logs)
        count=${2:-100}
        for ((i=1; i<=count; i++)); do
            filename="log${i}.txt"
            echo "Nazwa pliku: $filename" > "$filename"
            echo "Skrypt: $SCRIPT_NAME" >> "$filename"
            echo "Data: $(date)" >> "$filename"
        done
        ;;
    -h|--help)
        echo "Dostępne opcje:"
        echo "  -d, --date         Wyświetla dzisiejszą datę"
        echo "  -l, --logs [liczba] Tworzy pliki log (domyślnie 100)"
        echo "  -h, --help         Wyświetla tę pomoc"
        ;;
esac