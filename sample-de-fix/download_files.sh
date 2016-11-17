#!/bin/bash

# get En-Ro training data for WMT16
mkdir model data 
if [ ! -f data/de-en.tgz ];
then
  wget http://www.statmt.org/europarl/v7/de-en.tgz -O data/de-en.tgz
fi

#if [ ! -f data/SETIMES2.de-en.txt.zip ];
#then
#  wget http://opus.lingfil.uu.se/download.php?f=SETIMES2/en-de.txt.zip -O data/SETIMES2.de-en.txt.zip
#fi

cd data/
tar -xf de-en.tgz
#unzip SETIMES2.de-en.txt.zip

#cat europarl-v7.de-en.en SETIMES2.en-de.en > corpus.en
#cat europarl-v7.de-en.de SETIMES2.en-de.de > corpus.de

cat europarl-v7.de-en.en > corpus.en
cat europarl-v7.de-en.de > corpus.de

cd ..
