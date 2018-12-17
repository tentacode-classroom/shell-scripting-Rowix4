#!/bin/bash

mkdir -p bazar_clean/divers
mkdir -p bazar_clean/images
mkdir -p bazar_clean/videos

DIR_DIV="bazar_clean/divers"
DIR_IMG="bazar_clean/images"
DIR_VID="bazar_clean/videos"

FILES=`find $1 -type f`

for file in $FILES
do
	if file "$file" | grep 'image data'
	then
		YEAR=`stat -t %Y $file | cut -d ' ' -f 9 | sed s/\"//g`
		if [ ! -d bazar_clean/images/$YEAR ]
		then
			mkdir bazar_clean/images/$YEAR
		fi
		
		MONTH=`stat -t %m $file | cut -d ' ' -f 9 | sed s/\"//g`
		if [ ! -d bazar_clean/images/$YEAR/$MONTH ]
		then
			mkdir bazar_clean/images/$YEAR/$MONTH
		fi
		
		FILENAME=`echo "$file" | sed "s/.*\///"`
		cp $file bazar_clean/images/$YEAR/$MONTH/$FILENAME
		echo "$file rangé !"
	fi
done