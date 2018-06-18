#!/bin/bash
cnt=$1
echo "creating $cnt containers.."
sleep 2;
for i in `seq $cnt`
do
   echo "creating www.tomcat$i container.."
   
   sleep 1
   docker run -it --name www.tomcat$i -d log-tomcat /bin/bash
done
