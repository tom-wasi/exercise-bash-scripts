#!/bin/bash

apt update > /dev/null
available_updates=$(apt list --upgradable 2>/dev/null | grep -c upgradable)

if [ "$available_updates" -gt 0 ]; then
  echo "Dostepne sa $available_updates aktualizacje systemowe"
else
  echo "Brak dostepnych aktualizacji"
fi
