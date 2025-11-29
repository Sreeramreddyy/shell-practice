#!/bin/bash

set -euo pipefail 

trap 'echo "there is an error in $LINENO, Command is: $BASH_COMMAND"' ERR

echo "Hello.."
echo "Before Error.."
akjljsnjfdkj
echo "After Error"