#!/bin/bash

heroes=("nani","prabhas","raviteja")
echo "all heroes names: ${heroes[@]}"
echo "my favourite hero name is: ${heroes[0]}"
echo "pan indis heroes: ${heroes[1,2]}"

