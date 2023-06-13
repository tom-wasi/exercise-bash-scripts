#!/bin/bash 

source_dir="/path/to/source"

backup_dir="/path/to/target"

backup_name="backup_$(date + %Y%m%d%H%M%S)"

cp -r "$source_dir" "$backup_dir/$backup_name"

mv "$source_dir/filename.txt" "/path/to/different/target"
