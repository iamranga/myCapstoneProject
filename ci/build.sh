#!/lib/bash
#git clone rr_git
#echo "cloning done"
echo "About to print pwd1 value -"
echo $(pwd)

chmod 777 rr_git 

chmod 777 resource-app 

echo $(ls)

cd rr_git 

echo "About to print pwd2 value -"
echo $(pwd)
mvn clean install -e -DskipTests=true || ErrorHandler "Build Failed for test"

echo $(pwd) 

cp target/* ../resource-app/ 

cd ../resource-app/ 
 
echo $(ls) 
echo $(pwd) 

