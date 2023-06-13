#!/bin/bash

service_name="nazwa-uslugi"

# odczytanie statusu uslugi
service_status=$(systemctl is-active --quiet "$service_name" && echo "active" || echo "inactive")

# restart jeśli usługa jest nieaktywna

if [ "$service_status" = "inactive" ]; then
  systemctl restart "$service_name"
  echo "Usluga $service_name zostala zrestartowana."
else
  echo "Usluga $service_name jest juz aktywna."
fi
