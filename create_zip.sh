#!/bin/bash

mkdir "Zipped Pages"

for i in `ls Environment-Variables/`; do gzip -k "Environment-Variables/$i"; done;
for i in `ls OpenMP-RuntimeRoutines/`; do gzip -k "OpenMP-RuntimeRoutines/$i"; done;

mv OpenMP-RuntimeRoutines/*.gz Zipped\ Pages/
mv Environment-Variables/*.gz Zipped\ Pages/
