#!/bin/bash

# Limit użycia dysku w procentach
disk_limit=90

# Sprawdzenie użycia dysku - komenda df -h zwraca informacje o pojemności dla systemu plików, który jest zamontowany w katalogu głównym
# awk 'NR==2 {print $5}' wybiera drugą linię wyniku z komendy df -h i wypisuje piątą kolumnę z procentową wartością użytej pojemności
#cut -d'%' -f1 przetwarza wynik oddzielając wartość od znaku procenta i wybierając pierwszą kolumnę
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | cut -d'%' -f1)

# Sprawdzenie, czy użycie dysku przekracza limit
if [ "$disk_usage" -gt "$disk_limit" ]; then
    echo "Użycie dysku przekroczyło limit! Aktualne użycie: ${disk_usage}%"
    # Możesz dodać dodatkowe działania, takie jak wysłanie powiadomienia e-mailem
else
    echo "Użycie dysku jest w porządku. Aktualne użycie: ${disk_usage}%"
fi
