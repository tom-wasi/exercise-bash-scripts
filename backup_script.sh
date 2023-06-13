#!/bin/bash

source_dir="/path/to/source"

# Katalog docelowy dla kopii zapasowej
backup_dir="/path/to/backup"

# Tworzenie nazwy pliku kopii zapasowej z datą i czasem
backup_file="backup_$(date +%Y%m%d%H%M%S).tar.gz"

# Tworzenie kopii zapasowej
# tar (tarball) - format plików w Linuxie używany do kompresji wielu plików.

tar -zcvf "${backup_dir}/${backup_file}" "${source_dir}"

