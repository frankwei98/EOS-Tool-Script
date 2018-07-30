#!/bin/bash

# Complie And Generate ABI using eosiocpp
# @author: Frank Wei<frank@frankwei.xyz>
# This script is under GPL v3 License

name=${PWD##*/}
echo "======================================"
echo "Your contract name: $name. "
echo "======================================"

if [ -e "$name.cpp" ]
then
    eosiocpp -o "$name.wast" "$name.cpp"
    eosiocpp -g "$name.abi" "$name.cpp"
    echo "Cool! Your code (should) make it. "
    echo "Make sure you check out $name.wasm and $name.abi"
else
    echo "You don't have $name.cpp in this folder!"
    echo "You need the have $name.cpp to compile and submit to node"
    exit 1
fi



