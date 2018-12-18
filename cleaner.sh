#!/bin/bash

CURRENT_DIRECTORY=`dirname $0`
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/bazar

mkdir -p bazar_clean/divers bazar_clean/images bazar_clean/videos
DIR_DIV="bazar_clean/divers"
DIR_IMG="bazar_clean/images"
DIR_VID="bazar_clean/videos"

FILES=`find $BAZAR_DIRECTORY -type f`

for file in $FILES
do
	file $file | grep 'image data' > /dev/null
	VAR_IF_IMG=$?
	
	file $file | grep 'ISO Media' > /dev/null
	VAR_IF_MEDIA=$?
	
	if [ $VAR_IF_IMG = 0 ]
	then
		cp $file $DIR_IMG
		echo "$file rangé dans le dossier $DIR_IMG"
	elif [ $VAR_IF_MEDIA = 0 ]
	then
		cp $file $DIR_VID
		echo "$file rangé dans le dossier $DIR_VID"
	else
		cp $file $DIR_DIV
		echo "$file rangé dans le dossier $DIR_DIV"
	fi
done