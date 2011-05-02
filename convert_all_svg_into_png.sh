#!/bin/sh
echo "Starting convert process (libmagickcore3-extra required)..."
rm png/*
cd svg/vim; for i in *.svg; do convert -background none $i ../../png/`echo $i | sed -e 's/svg$/png/'`; done
cd ../shell; for i in *.svg; do convert -background none $i ../../png/`echo $i | sed -e 's/svg$/png/'`; done
cd ../foss; for i in *.svg; do convert -background none $i ../../png/`echo $i | sed -e 's/svg$/png/'`; done
echo "Convert process done."

