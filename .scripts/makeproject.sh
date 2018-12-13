#!/bin/bash
cs105dir=/mnt/usb/School/CS105/Assignments/

if [ $# -eq 0 ]
  then
    echo "No project name passed exiting..." && exit 1
fi

if [ ! -d ${cs105dir}Incomplete/Ayvazian-Jo_$1 ]
  then
    cp -r ${cs105dir}CS105ProjectTemplate ${cs105dir}Incomplete/Ayvazian-Jo_$1
    echo 'Copied CS105ProjectTemplate'
    else
      echo "${cs105dir}Incomplete/Ayvazian-Jo_$1 already exists."
fi

# Renames project name
sed -i -e "s,<name>CS105 Project Template</name>,<name>Ayvazian-Jo_${1}</name>,g" ${cs105dir}Incomplete/Ayvazian-Jo_$1/pom.xml
echo "Renamed project name in pom.xml to ${1}"

# Changes artifactid name
sed -i -e "s,<artifactId>CS105ProjectTemplate</artifactId>,<artifactId>Ayvazian-Jo_${1}</artifactId>,g" ${cs105dir}Incomplete/Ayvazian-Jo_$1/pom.xml
echo "Renamed artifactId in pom.xml to ${1}"

# Buildspec output name change
sed -i -e "s,target/project.jar,target/Ayvazian-Jo_${1}-1.0.jar,g" ${cs105dir}Incomplete/Ayvazian-Jo_$1/buildspec.yml
echo "Renamed output jar in buildspec.yml to ${1}"
