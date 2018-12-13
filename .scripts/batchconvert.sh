#!/bin/sh

files=$(find ./ -iname "*.md" -type f)
for item in ${files}
do
	pandoc $item -o "${item}.pdf"	
done
