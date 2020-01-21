#!/bin/bash

clear

P1="https://raw.githubusercontent.com/alectramell/stork/master/xaa.txt"
P2="https://raw.githubusercontent.com/alectramell/stork/master/xab.txt"

clear

wget "$P1" --no-check-certificate -q -O .xaa
wget "$P2" --no-check-certificate -q -O .xab

clear

cat .xaa .xab | rev | xxd -p -r > stork.zip

clear

rm .xaa
rm .xab

clear
