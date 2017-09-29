#!/bin/bash

fnam="$(echo $1)" && [ "$fnam" == "" ] && kotlinc || ex="${fnam##*.}" && [ "$ex" != "kt" ] && { echo "Invalid kotlin file"; exit 1; } || fnam="$(echo $fnam | cut -f 1 -d '.')" && st="kotlinc $fnam.kt -include-runtime -d $fnam.jar" && pt="java -jar $fnam.jar"  && [ "$fnam" != "" ] && ($st && $pt && exit
)
