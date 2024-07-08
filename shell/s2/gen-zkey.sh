#!/bin/bash

start=`date +%s`

# need enter a random text
npx snarkjs zkc "build/zkey/${1}_0.zkey" "build/zkey/${1}_1.zkey" --name="DoraHacks" -v

end=`date +%s`

time=`echo $start $end | awk '{print $2-$1}'`

echo -e "\n${1} zkey contribute"
echo "Spend time: $time seconds"

npx snarkjs zkev "build/zkey/${1}_1.zkey" "build/${1}_verification_key.json"

echo -e "\nExport successfully"

exec /bin/bash
