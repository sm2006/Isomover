#!/bin/bash

# Organizes your .ISO files

# By Krish Kankure

userhome=$(eval echo ~$user)

if [ ! -d $userhome/Documents/Isomover ]; then
  mkdir -p $userhome/Documents/Isomover;
fi;

SOURCEDIR=$userhome/Downloads/
DESTDIR=$userhome/Documents/Isomover/

timestamp() {
  date +"%T" # current time
}

if [ -f $SOURCEDIR*.iso ]; then
   echo "$(timestamp): Iso Files Found in $SOURCEDIR"
   mv $SOURCEDIR*.iso $DESTDIR
   echo "$(timestamp): Files succesfully moved from $SOURCEDIR to $DESTDIR"
else
   echo "$(timestamp): No .iso files found in $SOURCEDIR"
fi;


