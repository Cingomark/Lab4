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
    --init)
        CURRENT_DIR=$(pwd)
        git clone https://github.com/Cingomark/Lab4.git
        export PATH=$PATH:$CURRENT_DIR
        ;;
    -h|--help)
        echo "Dostepne opcje:"
        echo "  -d, --date         Wyswietla dzisiejsza date"
        echo "  -l, --logs [liczba] Tworzy pliki log (domyslnie 100)"
        echo "      --init         Klonuje repozytorium i ustawia zmienna PATH"
        echo "  -h, --help         Wyswietla te pomoc"
        ;;
esac