#!/bin/bash
# Download and compile ScalaZ3

git clone https://github.com/epfl-lara/ScalaZ3.git
cd ScalaZ3

# Link z3
mkdir -p z3/4.3-unix-64b/lib
cp ../z3/build/libz3.so z3/4.3-unix-64b/lib
cp -r ../z3/src/api z3/4.3-unix-64b/include

# Compile and publish
sbt package
sbt packageBin
sbt publish-local
cd ..
