#!/bin/bash

url="https://raw.githubusercontent.com/xeome/system-profiles/master/sysctl.d/"

file_list=(
  "95-networking.conf"
  "99-redis.conf"
)

download_file() {
  local filename="$1"
  local full_url="$url$filename"
  local full_path="/etc/sysctl.d/$filename"
  if [ -f "$full_path" ]; then
    echo "File $filename already exists"
  else
    wget -O "$full_path" "$full_url"
    echo "File downloaded and saved in $full_path"
  fi
}

for filename in "${file_list[@]}"
do
  download_file "$filename"
done
