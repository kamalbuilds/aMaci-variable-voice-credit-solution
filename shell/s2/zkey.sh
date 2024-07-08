#!/bin/bash

if [ ! -d "build/json" ]; then
  mkdir build/json
fi

npx snarkjs zkev "build/zkey/${1}_0.zkey" "build/json/${1}_0.json"

echo -e "\nExport successfully"

exec /bin/bash
