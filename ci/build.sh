#!/usr/bin/env bash
#git clone rr_git
#echo "cloning done"
sudo su
echo "About to print pwd1 value -"
chmod 777 resource-app
echo $(pwd)
cd rr_git
echo "About to print pwd2 value -"
echo $(pwd)
mvn clean install -e -DskipTests=true || ErrorHandler "Build Failed for test"
echo $(ls -lart)
echo $(pwd)
cd target
echo $(ls)
echo "------installation done---------"
echo $(pwd)
