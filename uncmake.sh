#!/bin/bash

# Get the directory elements as an array
directoryElements=$(ls .)

foundCMakeFiles=0
folderName=${PWD##*/}

# Loop through each element and
# check if cmake files are found
for i in $directoryElements; do

if [ $i == "CMakeCache.txt" ]; then
	   echo "CMakeCache.txt is found!"
     foundCMakeFiles=$((foundCMakeFiles+1))
elif [ $i == "cmake_install.cmake" ]; then
     echo "cmake_install.cmake is found!"
     foundCMakeFiles=$((foundCMakeFiles+1))
elif [ $i == "CMakeFiles" ]; then
      echo "CMakeFiles folder is found!"
      foundCMakeFiles=$((foundCMakeFiles+1))
fi
done

if [ $foundCMakeFiles == 0 ]; then
     echo "FATAL: CMake files are not found!"
     exit 1
fi

if [ $foundCMakeFiles == 3 ]; then
     echo "CMake files are found!"
     if [ $folderName == "build" ]; then
        echo "Removing all files in $folderName"
        rm -r *
     fi
fi
