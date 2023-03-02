#!/bin/bash                                                                                                                                                                                                 
set -x
#enter the directory
echo "Enter the directory"
read target_directory

#enter into the directory
cd $target_directory

#cosntruct loop to read file and extension ,create directory based on the extension
for filename in *; do
  if [[ -f "$filename" ]]; then
      base=${filename%.*}
      ext=${filename#$base.}

    mkdir -p "${ext}"
  else
    echo "Directory already Exists"
  fi 
  #move the files based on the directory
   mv "$filename" "${ext}"
  
done