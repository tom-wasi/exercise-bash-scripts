#!/bin/bash

# /var/log/syslog to sciezka do pliku z logami systemowymi
log_file="/var/log/syslog"

tail -f "$log_file"
