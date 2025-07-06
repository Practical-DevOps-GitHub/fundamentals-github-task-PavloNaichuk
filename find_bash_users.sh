#!/bin/bash
if [ -z "$1" ]; then
  PASSWD_FILE="/etc/passwd"
else
  PASSWD_FILE="$1"
fi
awk -F: '$7 == "/bin/bash" {print $1}' "$PASSWD_FILE"
