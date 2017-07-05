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

cp -r target/* ../resource-app/ #just to deal with newline character

cp manifest.yml ../resource-app/ #deal with newline in mac to ubuntu

cd ../resource-app/ #

apt install zip #

zip -r resource-app.zip . #
 
echo $(ls) 
echo $(pwd) #
# just to avoid errors while transfering from my mac to ubuntu 
