#!/bin/bash

if [ ! -d "build/zkey" ]; then
  mkdir build/zkey
fi

export NODE_OPTIONS=--max-old-space-size=8192

start=`date +%s`

npx snarkjs g16s "build/${1}.r1cs" ptau/powersOfTau28_hez_final_22.ptau "build/zkey/${1}_0.zkey"

end=`date +%s`

time=`echo $start $end | awk '{print $2-$1}'`

echo -e "\n${1} groth16 setup"
echo "Spend time: $time seconds"

exec /bin/bash
