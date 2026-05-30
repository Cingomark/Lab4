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
    -e|--error)
        count=${2:-100}
        for ((i=1; i<=count; i++)); do
            dirname="error${i}"
            filename="${dirname}.txt"
            mkdir -p "$dirname"
            echo "Nazwa pliku: $filename" > "$dirname/$filename"
            echo "Skrypt: $SCRIPT_NAME" >> "$dirname/$filename"
            echo "Data: $(date)" >> "$dirname/$filename"
        done
        ;;
    --init)
        CURRENT_DIR=$(pwd)
        git clone <URL_DO_REPOZYTORIUM> .
        export PATH=$PATH:$CURRENT_DIR
        ;;
    -h|--help)
        echo "Dostępne opcje:"
        echo "  -d, --date          Wyświetla dzisiejszą datę"
        echo "  -l, --logs [liczba]  Tworzy pliki log (domyślnie 100)"
        echo "  -e, --error [liczba] Tworzy katalogi i pliki error (domyślnie 100)"
        echo "      --init          Klonuje repozytorium i ustawia zmienną PATH"
        echo "  -h, --help          Wyświetla tę pomoc"
        ;;
esac