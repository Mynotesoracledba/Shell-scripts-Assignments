#!/bin/bash

#echo the program
echo "Enter compress the directories available"

#get the list of dir


get_list_of_dir=`find dir*`

#zip files in dir
compress_zip=`zip -r compress_all_files.zip $get_list_of_dir`

#display result

echo "$compress_zip"
