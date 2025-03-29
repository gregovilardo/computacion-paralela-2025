#!/bin/bash

COMPILERS=("icx" "clang" "nvcc")

make clean

mkdir pruebas
updates="pruebas/updates.csv"
echo "L,compiler,optimization,updates/ns" >$updates

for n in {9..10}; do
    L=$((2 ** n))

    for compiler in "${COMPILERS[@]}"; do

        echo "===== Testing with $compiler ====="
        mkdir "pruebas/L${L}"

        for x in {3..3}; do
            CC="$compiler" CFLAGS="-DL=$L -O$x" make --always-make tiny_ising
            # outfile="pruebas/L${L}/${compiler}_O${x}.out"
            perfout="pruebas/L${L}/perfstats${compiler}_O${x}.out"
            perf stat --detailed -r 3 ./tiny_ising 2>$perfout
            cell_ns=$(awk '{s+=$1} {n+=1} END {print s/n}' out)
            echo "$L,$compiler,$x,$cell_ns" >>$updates
            rm out

            rm -f perf.tmp
            echo "Generated $outfile"
        done
    done
done

echo "All tests completed."

