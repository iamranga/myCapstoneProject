#!/usr/bin/env bash
git clone myCapstoneProject
echo "cloning done"
echo "About to print pwd1 value -"
echo $(pwd)
cd myCapstoneProject
echo "About to print pwd2 value -"
echo $(pwd)
mvn clean install -e -DskipTests=true || ErrorHandler "Build Failed for test"
echo $(ls -lart)
echo $(pwd)
cd target
echo $(ls)
echo "------installation done---------"
echo $(pwd)
