#!/bin/bash
# Download and compile z3

# v4.3.2
wget -O z3.zip "http://download-codeplex.sec.s-msft.com/Download/SourceControlFileDownload.ashx?ProjectName=z3&changeSetId=cee7dd39444c9060186df79c2a2c7f8845de415b"
unzip z3.zip -d z3
# git clone https://git01.codeplex.com/z3

cd z3
git checkout rc
python scripts/mk_make.py
cd build
make
cd ../../
