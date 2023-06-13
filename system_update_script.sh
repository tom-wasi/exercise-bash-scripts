#!/bin/bash

# Aktualizacja pakietów
apt update

# -y jest opcją w narzędziu apt, która automatycznie odpowiada na wszystkie zgody 'Tak'
apt upgrade -y

# Aktualizacja systemu
apt dist-upgrade -y

# Czyszczenie zbędnych plików
apt autoremove -y
apt autoclean
