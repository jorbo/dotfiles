#!/bin/bash

name=${PWD##*/}
if [ -a ../../Complete/${name}.zip ]
  then
    echo -n "Zip file already eixsts do you want to overwrite it?: "
    read -r confirm
    if [ "${confirm}" == "y" ]
      then
        rm ../../Compelete/${name}.zip
        zip -r ../../Complete/${name}.zip .
        elseread
          zip -r ../../Complete/${name}.zip .
    fi
  else
    zip -r ../../Complete/${name}.zip .
fi
echo -n "Do you want to validate this zip?: "
read -r confirm
if [ "${confirm}" == "y" ]
  then
    java -jar ${usb}/School/CS105/Cs105-Project-Validator.jar ../../Compelete/${name}.zip
  else
   exit 1
fi