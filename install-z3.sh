#!/bin/bash
# Download and compile z3
git clone https://git01.codeplex.com/z3
cd z3
git checkout rc
python scripts/mk_make.py
cd build
make
cd ../../
