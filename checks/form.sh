#!/bin/sh
# The command form posts a filename to /cmd.
set -e
H=http://web:5000
P=$(curl -fsS "$H/")
echo "$P" | grep -q 'action="/cmd"'
echo "$P" | grep -q 'name="filename"'
